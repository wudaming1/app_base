import 'package:app_base/app_base.dart';
import 'package:example/pages/sliver_architecture/sliver_architecture_page.dart';
import 'package:example/translation.dart';
import 'package:flutter/material.dart';

import 'home_controller.dart';

class HomePage extends BasePage<HomeController> {
  const HomePage({super.key});

  static const String path = '/';

  @override
  Widget buildPage(BuildContext context) {
    return PageView(
      controller: controller.pageController,
      onPageChanged: controller.onPageChanged,
      children: [
        Container(),
        Container(),
        Container(
          alignment: Alignment.center,
          child: ElevatedButton(
              onPressed: () {
                Get.toNamed(SliverArchitecturePage.path);
              },
              child: const Text(Translation.sliver)),
        )
      ],
    );
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
          label: Translation.sliver,
        ),
      ],
    );
  }

  @override
  HomeController onInitController() {
    return HomeController();
  }
}
