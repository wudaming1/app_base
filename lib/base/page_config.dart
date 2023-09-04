import 'package:flutter/material.dart';

typedef PageBuilder = Widget Function(BuildContext context);

class BasePageConfig {
  static PageBuilder errorPageBuilder = (context) => const SizedBox();
  static PageBuilder emptyPageBuilder = (context) => const SizedBox();
  static PageBuilder busyPageBuilder = (context) => const SizedBox();
  static PreferredSizeWidget Function(BuildContext context) appBarBuilder =
      (context) => AppBar();
}
