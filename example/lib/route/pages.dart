import 'package:app_base/app_base.dart';
import 'package:example/pages/home/home_page.dart';

const String _tagName = "parameterTagName";

final List<GetPage> pages = [
  GetPage(
      name: '/',
      page: () {
        return HomePage(tag: Get.parameters[_tagName]);
      }),
  // GetPage(name: '/second', page: () => Second()),
  // GetPage(name: '/third', page: () => Third(), transition: Transition.zoom),
];
