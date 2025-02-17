import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class _KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KurdishMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      KurdishWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(_KurdishMaterialLocalizationsDelegate old) => false;
}

class KurdishWidgetLocalizations extends WidgetsLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _KurdishMaterialLocalizationsDelegate();

  @override
  TextDirection get textDirection => TextDirection.rtl;

  @override
  String get reorderItemDown =>  'بۆ خوارەوە ڕیزبەندی';

  @override
  String get reorderItemLeft => 'ڕیزبەندی بۆ چەپ';

  @override
  String get reorderItemRight => 'ڕیزبەندی بۆ ڕاست';

  @override
  String get reorderItemToEnd =>  'ڕیزبەندی بۆ کۆتایی';

  @override
  String get reorderItemToStart => 'ڕیزبەندی بۆ دەستپێک';

  @override
  String get reorderItemUp => 'ڕیزبەندی بۆ سەرەوە';
}
