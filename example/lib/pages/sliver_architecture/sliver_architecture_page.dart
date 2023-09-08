import 'package:app_base/app_base.dart';
import 'package:example/pages/sliver_architecture/sliver_architecture_controller.dart';
import 'package:example/widgets/my_sliver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SliverArchitecturePage extends BasePage<SliverArchitectureController> {
  const SliverArchitecturePage({super.key});

  static const String path = '/sliverArchitecturePage';

  @override
  Widget buildPage(BuildContext context) {
    return CustomScrollView(
      // scrollDirection: Axis.horizontal,
      // reverse: true,
      slivers: [
        SliverToBoxAdapter(
          child: OutlinedButton(
            onPressed: controller.updateHeight,
            child: Container(
              color: Colors.yellow,
              margin: EdgeInsets.all(16),
              height: controller.height,
              width: 100,
            ),
          ),
        ),
        // MySliver(100,
        //     child: ColoredBox(
        //       color: Colors.red.withOpacity(0.5),
        //     )),

        ...List.generate(
            40,
            (index) => SliverToBoxAdapter(
                  child: Container(
                    color: Colors.yellow,
                    margin: EdgeInsets.all(16),
                    height: 100,
                    width: 100,
                  ),
                )),
        MySliver(100,
            child: ColoredBox(
              color: Colors.green.withOpacity(0.5),
            )),
      ],
    );
  }

  @override
  SliverArchitectureController onInitController() {
    return SliverArchitectureController();
  }
}
