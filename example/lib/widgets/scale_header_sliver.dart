import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// 可以下拉放大的Header， 必须使用BouncingScrollPhysics才能出现下拉回弹的效果。
class ScaleHeaderSliver extends SingleChildRenderObjectWidget {
  const ScaleHeaderSliver(this.height, {super.key, required super.child});

  final double height;

  // 决定一个Widget是Box约束还是Sliver约束的关键在于它创建的RenderObject
  @override
  RenderObject createRenderObject(BuildContext context) {
    return _MyRenderSliver()..extend = height;
  }
}

class _MyRenderSliver extends RenderSliverSingleBoxAdapter {
  double extend = 0;

  // @override
  // double get centerOffsetAdjustment => 50;

  @override
  void performLayout() {
    /// overscroll时overlap小于0，绘制起点应该在测量起点前面。
    double paintOrigin = constraints.overlap;

    /// 绘制范围应该减去overlap，如果说是overscroll，overlap是负值。
    double paintExtent =
        extend - constraints.overlap - constraints.scrollOffset;
    // 绘制高度不超过最大可绘制空间
    paintExtent = clampDouble(paintExtent, 0, constraints.remainingPaintExtent);
    geometry = SliverGeometry(
        scrollExtent: extend,
        paintOrigin: paintOrigin,
        paintExtent: paintExtent,
        maxPaintExtent: paintExtent,
        layoutExtent: min(extend, paintExtent));
    if (child != null) {
      child!.layout(
          constraints.asBoxConstraints(
              maxExtent: paintExtent, minExtent: paintExtent),
          parentUsesSize: false);
    }
  }
}
