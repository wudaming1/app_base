import 'package:app_base/app_base.dart';
import 'package:flutter/material.dart';

import 'home_controller.dart';

class HomePage extends BasePage<HomeController> {
  const HomePage({super.key});

  @override
  Widget buildPage(BuildContext context) {
    return Center(child: Text("home"),);
  }

  @override
  Widget? buildBottomNavBar(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: controller.onDestinationSelected,
      indicatorColor: Colors.amber[800],
      selectedIndex: controller.currentPageIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.school),
          icon: Icon(Icons.school_outlined),
          label: 'School',
        ),
      ],
    );
  }

  @override
  HomeController onInitController() {
    return HomeController();
  }
}
