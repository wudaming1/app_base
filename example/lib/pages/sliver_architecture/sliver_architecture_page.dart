import 'package:app_base/app_base.dart';
import 'package:example/pages/sliver_architecture/sliver_architecture_controller.dart';
import 'package:flutter/widgets.dart';

class SliverArchitecturePage extends BasePage<SliverArchitectureController> {
  const SliverArchitecturePage({super.key});

  static const String path = '/sliverArchitecturePage';

  @override
  Widget buildPage(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            padding: const EdgeInsets.all(16), child: Text(index.toString()));
      },
    );
  }

  @override
  SliverArchitectureController onInitController() {
    return SliverArchitectureController();
  }
}
