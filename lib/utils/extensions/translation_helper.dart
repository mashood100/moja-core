import 'package:flutter/material.dart';
import 'package:moja_core/l10n/generated/i18n/app_localizations.dart';

extension CustomLocalization on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this)!;
}

final LocalizationsDelegate<AppLocalizations> localizationsDelegate =
    AppLocalizations.delegate;
