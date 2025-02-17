import 'package:flutter/material.dart';

extension ThemeMode on BuildContext {
  bool get isDark => Theme.of(this).brightness == Brightness.dark;
}
