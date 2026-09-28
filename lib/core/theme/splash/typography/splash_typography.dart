import 'package:bible_app/core/theme/fonts/app_font_family.dart';
import 'package:bible_app/core/theme/splash/typography/splash_typography_ext.dart';
import 'package:flutter/material.dart';

class SplashTypography {
  const SplashTypography._();
  static final Map<String, SplashTypographyExt> _cache = {};

  static SplashTypographyExt build(Locale locale) {
    final key = locale.toString();
    return _cache.putIfAbsent(key, () {
      final font = AppFontFamily.resolve(locale);
      return SplashTypographyExt(
        title: TextStyle(
          fontFamily: font,
          fontSize: 32,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.5,
        ),
        subTitle: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      );
    });
  }
}
