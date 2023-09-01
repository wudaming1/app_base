import 'package:app_base/app_base.dart';
import 'package:flutter/cupertino.dart';

import 'home_controller.dart';

class HomePage extends BasePage<HomeController> {
  const HomePage({super.key,super.tag});

  @override
  Widget buildPage(BuildContext context) {
    return const Center(
      child: Text('Home Page'),
    );
  }

  @override
  HomeController onInitController() {
    return HomeController();
  }
}
