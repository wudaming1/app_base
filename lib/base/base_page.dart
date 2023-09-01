import 'package:app_base/base/base_controller.dart';
import 'package:app_base/base/page_config.dart';
import 'package:app_base/base/page_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BasePage<T extends BaseController> extends StatelessWidget {
  const BasePage({super.key, this.tag});

  final String? tag;

  T get controller => Get.find<T>(tag: tag);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      tag: tag,
      init: onInitController(),
      builder: (T controller) {
        controller.buildContext = context;
        Widget body;
        switch (controller.pageState) {
          case PageState.idle:
            body = buildPage(context);
            break;
          case PageState.busy:
            body = buildBusyPage(context);
            break;
          case PageState.error:
            body = buildErrorPage(context);
            break;
          case PageState.empty:
            body = buildEmptyPage(context);
            break;
        }

        return Scaffold(
          body: body,
        );
      },
    );
  }

  void onPageInit() {}

  void onPageFinish() {}

  T onInitController();

  Widget buildPage(BuildContext context);

  Widget buildErrorPage(BuildContext context) {
    return BasePageConfig.errorPageBuilder(context);
  }

  Widget buildEmptyPage(BuildContext context) {
    return BasePageConfig.emptyPageBuilder(context);
  }

  Widget buildBusyPage(BuildContext context) {
    return BasePageConfig.busyPageBuilder(context);
  }
}
