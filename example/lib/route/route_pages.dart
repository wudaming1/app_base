import 'package:app_base/app_base.dart';
import 'package:example/pages/home/home_page.dart';

const String tag = "_pageTag";
final List<GetPage> pageList = [
  GetPage(name: '/', page: (){
    return const HomePage();
  })
];
