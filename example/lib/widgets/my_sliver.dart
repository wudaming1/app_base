import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MySliver extends SingleChildRenderObjectWidget {
  const MySliver(this.height, {super.key, required super.child});

  final double height;

  // 决定一个Widget是Box约束还是Sliver约束的关键在于它创建的RenderObject
  @override
  RenderObject createRenderObject(BuildContext context) {
    return _MyRenderSliver()..extend = height;
  }
}

class _MyRenderSliver extends RenderSliverSingleBoxAdapter {
  double extend = 0;

  @override
  void performLayout() {
    double overScroll = constraints.overlap < 0 ? constraints.overlap.abs() : 0;
    double paintExtent = extend + overScroll - constraints.scrollOffset;
    // 绘制高度不超过最大可绘制空间
    paintExtent = min(paintExtent, constraints.remainingPaintExtent);
    paintExtent = max(paintExtent,0);
    // double layoutExtent = min(extend, paintExtent);

    print(constraints.userScrollDirection.toString());
    print(constraints.axisDirection.toString());
    print(constraints.precedingScrollExtent.toString());


    geometry = SliverGeometry(scrollExtent: extend,
      paintOrigin: 0,
      paintExtent: paintExtent,
      maxPaintExtent: paintExtent,
      layoutExtent: paintExtent);
    if (child != null) {
      child!.layout(constraints.asBoxConstraints(maxExtent: paintExtent,minExtent: paintExtent),
          parentUsesSize: false);
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    print('paint=>'+ constraints.precedingScrollExtent.toString());
    super.paint(context, offset);
  }
}
