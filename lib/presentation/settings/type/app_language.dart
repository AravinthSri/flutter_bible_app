import 'package:flutter/material.dart';

enum AppLanguage {
  english,
  tamil;

  Locale get locale => switch (this) {
        AppLanguage.english => const Locale('en'),
        AppLanguage.tamil => const Locale('ta'),
      };

  String get storageKey => switch (this) {
        AppLanguage.english => 'en',
        AppLanguage.tamil => 'ta',
      };

  static AppLanguage fromStorageKey(String? key) => switch (key) {
        'ta' => AppLanguage.tamil,
        _ => AppLanguage.english,
      };
}
