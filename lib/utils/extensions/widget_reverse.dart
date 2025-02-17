import 'dart:math';

import 'package:flutter/material.dart';

extension ReverseWidget on Widget {
  Widget reverseLeft(BuildContext context) {
    final direction = Directionality.of(context);
    return direction == TextDirection.ltr
        ? this
        : Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(pi),
            child: this,
          );
  }

  Widget reverseRight(BuildContext context) {
    final direction = Directionality.of(context);
    return direction == TextDirection.rtl
        ? this
        : Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(pi),
            child: this,
          );
  }
}
