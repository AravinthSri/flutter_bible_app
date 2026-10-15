import 'package:flutter/material.dart';

enum AppThemeOption {
  light,
  dark;

  ThemeMode get themeMode => switch (this) {
        AppThemeOption.light => ThemeMode.light,
        AppThemeOption.dark => ThemeMode.dark,
      };

  String get storageKey => switch (this) {
        AppThemeOption.light => 'light',
        AppThemeOption.dark => 'dark',
      };

  static AppThemeOption fromStorageKey(String? key) => switch (key) {
        'dark' => AppThemeOption.dark,
        _ => AppThemeOption.light,
      };
}
