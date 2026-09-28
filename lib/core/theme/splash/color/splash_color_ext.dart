import 'package:bible_app/core/theme/splash/color/splash_color.dart';
import 'package:flutter/material.dart';

class SplashColorExt extends ThemeExtension<SplashColorExt> {
  const SplashColorExt({
    required this.background,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.loading,
  });

  final Color background;
  final Color icon;
  final Color title;
  final Color subTitle;
  final Color loading;

  static const light = SplashColorExt(
    background: SplashColor.splashBackgroundLight,
    icon: SplashColor.splashIconLight,
    title: SplashColor.splashTitleLight,
    subTitle: SplashColor.splashSubtitleLight,
    loading: SplashColor.splashLoaderLight,
  );

  static const dark = SplashColorExt(
    background: SplashColor.splashBackgroundDark,
    icon: SplashColor.splashIconDark,
    title: SplashColor.splashTitleDark,
    subTitle: SplashColor.splashSubtitleDark,
    loading: SplashColor.splashLoaderDark,
  );

  @override
  ThemeExtension<SplashColorExt> copyWith({
    Color? background,
    Color? icon,
    Color? title,
    Color? subTitle,
    Color? loading,
  }) {
    if (background == null &&
        icon == null &&
        title == null &&
        subTitle == null &&
        loading == null) {
      return this;
    }

    return SplashColorExt(
      background: background ?? this.background,
      icon: icon ?? this.icon,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      loading: loading ?? this.loading,
    );
  }

  @override
  ThemeExtension<SplashColorExt> lerp(
    covariant ThemeExtension<SplashColorExt>? other,
    double t,
  ) {
    if (other is! SplashColorExt) {
      return this;
    }

    if (t == 0.0) {
      return this;
    }
    if (t == 1.0) {
      return other;
    }

    return SplashColorExt(
      background: Color.lerp(background, other.background, t)!,
      icon: Color.lerp(icon, other.icon, t)!,
      title: Color.lerp(title, other.title, t)!,
      subTitle: Color.lerp(subTitle, other.subTitle, t)!,
      loading: Color.lerp(loading, other.loading, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SplashColorExt &&
        other.background == background &&
        other.icon == icon &&
        other.title == title &&
        other.subTitle == subTitle &&
        other.loading == loading;
  }

  @override
  int get hashCode => Object.hash(background, icon, title, subTitle, loading);
}
