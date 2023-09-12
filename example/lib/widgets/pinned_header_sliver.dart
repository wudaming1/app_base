import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class PinnedHeaderSliver extends SingleChildRenderObjectWidget {
  const PinnedHeaderSliver({super.key, super.child});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _PinnedHeaderRenderSliver();
  }
}

class _PinnedHeaderRenderSliver extends RenderSliverSingleBoxAdapter {
  @override
  void performLayout() {
    if (child == null) {
      geometry = const SliverGeometry();
      return;
    }

    double maxExtent = constraints.remainingPaintExtent;

    child!.layout(
        constraints.asBoxConstraints(minExtent: 0, maxExtent: maxExtent),parentUsesSize: true);

    Size size = child!.size;
    geometry = SliverGeometry(
      scrollExtent: size.height,
      paintExtent: size.height,
      maxPaintExtent: size.height,
      layoutExtent: size.height,
    );
  }
}
