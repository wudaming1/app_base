import 'package:example/route/pages.dart';
import 'package:flutter/material.dart';
import 'package:app_base/app_base.dart';

void main() {
  runApp(
      GetMaterialApp(
        initialRoute: '/',
        getPages: pages,
      )
  );
}
