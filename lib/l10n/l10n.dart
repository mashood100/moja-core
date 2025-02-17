import 'package:flutter/material.dart';

class L10n {
  static final all = <Locale>[
    const Locale('ku'),
    const Locale('en'),
    const Locale('ar'),
  ];

  static String getTitle(String code) {
    switch (code) {
      case 'ar':
        return 'العربية';
      case 'ku':
        return 'کوردی';
      case 'en':
      default:
        return 'English';
    }
  }

  static String getFlag(String code) {
    switch (code) {
      case 'ar':
        return '🇸🇦';
      case 'ku':
        return '🇮🇶';
      case 'en':
      default:
        return '🇺🇸';
    }
  }
}
