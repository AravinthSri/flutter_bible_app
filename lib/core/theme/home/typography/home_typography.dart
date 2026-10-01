import 'package:bible_app/core/theme/fonts/app_font_family.dart';
import 'package:bible_app/core/theme/home/typography/home_typography_ext.dart';

import 'package:flutter/material.dart';

class HomeTypography {
  const HomeTypography._();
  static final Map<String, HomeTypographyExt> _cache = {};

  static HomeTypographyExt build(Locale locale) {
    final key = locale.toString();
    return _cache.putIfAbsent(key, () {
      final font = AppFontFamily.resolve(locale);
      return HomeTypographyExt(
        title: TextStyle(
          fontFamily: font,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.5,
        ),
        loadingTitle: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        loadingDescription: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        itemTitle: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        itemDescription: TextStyle(
          fontFamily: font,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        itemShortUsername: TextStyle(
          fontFamily: font,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      );
    });
  }
}
