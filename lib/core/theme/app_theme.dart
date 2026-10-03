import 'package:bible_app/core/theme/app_color.dart';
import 'package:bible_app/core/theme/home/color/avatar/avatar_colors_ext.dart';
import 'package:bible_app/core/theme/home/color/home/home_bottom_sheet_filter_color_ext.dart';
import 'package:bible_app/core/theme/home/color/home/home_color_ext.dart';
import 'package:bible_app/core/theme/home/color/home/home_filter_color_ext.dart';
import 'package:bible_app/core/theme/home/typography/home_typography.dart';
import 'package:bible_app/core/theme/splash/color/splash_color_ext.dart';
import 'package:bible_app/core/theme/splash/typography/splash_typography.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Map<String, ThemeData> _lightCache = {};
  static final Map<String, ThemeData> _darkCache = {};

  /// Same locale → same [ThemeData] instance (safe to call every build).
  static ThemeData lightTheme(Locale locale) {
    final key = locale.toString();
    return _lightCache.putIfAbsent(key, () => _buildLightTheme(locale));
  }

  static ThemeData darkTheme(Locale locale) {
    final key = locale.toString();
    return _darkCache.putIfAbsent(key, () => _buildDarkTheme(locale));
  }

  static ThemeData _buildLightTheme(Locale locale) {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.primary,
        brightness: Brightness.light,
      ),
      extensions: [
        SplashColorExt.light,
        SplashTypography.build(locale),

        HomeColorExt.light,
        HomeFilterColorExt.light,
        AvatarColorExtension.light,
        HomeBottomSheetColorFilterExt.light,
        HomeTypography.build(locale),
      ],
    );
  }

  static ThemeData _buildDarkTheme(Locale locale) {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColor.primary,
        brightness: Brightness.dark,
      ),
      extensions: [
        SplashColorExt.dark,
        SplashTypography.build(locale),

        HomeColorExt.dark,
        HomeFilterColorExt.dark,
        AvatarColorExtension.dark,
        HomeBottomSheetColorFilterExt.dark,
        HomeTypography.build(locale),
      ],
    );
  }
}
