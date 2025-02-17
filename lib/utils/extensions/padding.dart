import 'package:flutter/material.dart';

extension PaddingExt on EdgeInsets {
  // make the symmetric padding reversed for arabic
  // and kurdish languages by checking the locale
  EdgeInsets reverseH(BuildContext context) {
    // get locale
    final direction = Directionality.of(context);
    return EdgeInsets.only(
      right: direction == TextDirection.ltr ? right : left,
      left: direction == TextDirection.ltr ? left : right,
    );
  }
}
