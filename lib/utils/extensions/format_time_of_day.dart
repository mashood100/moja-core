import 'package:flutter/material.dart';

extension FormatTimeOfDay on TimeOfDay {
  String get getFormattedHour {
    // format this to 12 hour format and add AM or PM
    final hour12 = hour == 0 ? 12 : hour % 12;
    final amOrPm = hour >= 12 ? 'pm' : 'am';
    return '$hour12 $amOrPm';
  }
}
