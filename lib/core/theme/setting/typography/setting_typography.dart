import 'package:bible_app/core/theme/fonts/app_font_family.dart';
import 'package:bible_app/core/theme/setting/typography/setting_typography_ext.dart';
import 'package:flutter/material.dart';

class SettingTypography {
  const SettingTypography._();

  static final Map<String, SettingTypographyExt> _cache = {};

  static SettingTypographyExt build(Locale locale) {
    final key = locale.toString();
    return _cache.putIfAbsent(key, () {
      final font = AppFontFamily.resolve(locale);
      return SettingTypographyExt(
        title: TextStyle(
          fontFamily: font,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.5,
        ),
        appLanguageTitle: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        english: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        tamil: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        themeTitle: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        light: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        dark: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        appVersion: TextStyle(
          fontFamily: font,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );
    });
  }
}
