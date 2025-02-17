import 'package:flutter/cupertino.dart';

extension CheckDirection on BuildContext {
  bool get isRtl {
    return Directionality.of(this) == TextDirection.rtl;
  }
}
