import 'package:flutter/cupertino.dart';

typedef PageBuilder = Widget Function(BuildContext context);

class BasePageConfig{
  static PageBuilder errorPageBuilder = (context) => SizedBox();
  static PageBuilder emptyPageBuilder = (context) => SizedBox();
  static PageBuilder busyPageBuilder = (context) => SizedBox();
}