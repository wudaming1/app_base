import 'package:example/pages/home/home_page.dart';
import 'package:example/route/route_pages.dart';
import 'package:flutter/material.dart';
import 'package:app_base/app_base.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material3 Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: pageList,
      initialRoute: HomePage.path,
    );
  }
}
