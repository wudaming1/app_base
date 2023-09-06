import 'package:app_base/app_base.dart';
import 'package:example/pages/home/home_page.dart';
import 'package:example/pages/sliver_architecture/sliver_architecture_page.dart';

const String tag = "_pageTag";
final List<GetPage> pageList = [
  GetPage(name: HomePage.path, page: (){
    return const HomePage();
  }),
  GetPage(
      name: SliverArchitecturePage.path,
      page: () {
        return const SliverArchitecturePage();
      }),
];
