import 'package:bible_app/core/theme/fonts/app_fonts.dart';
import 'package:flutter/material.dart';

class AppFontFamily {
  static String resolve(Locale locale) {
    switch (locale.languageCode) {
      case 'ta':
        return AppFonts.notoSansTamil;
      default:
        return AppFonts.inter;
    }
  }
}
