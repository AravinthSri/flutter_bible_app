import 'package:bible_app/core/theme/app_color.dart';
import 'package:bible_app/core/theme/home/color/home/home_color.dart';
import 'package:flutter/material.dart';

class HomeColorExt extends ThemeExtension<HomeColorExt> {
  final Color? background;
  final Color? appBarTitle;
  final Color? shortcutTitle;
  final Color? title;
  final Color? subTitle;
  final Color? circle1;
  final Color? circle2;
  final Color? circle3;
  final Color? icon;
  final Color? progress;
  final Color? loading;

  const HomeColorExt({
    required this.background,
    required this.appBarTitle,
    required this.shortcutTitle,
    required this.title,
    required this.subTitle,
    required this.circle1,
    required this.circle2,
    required this.circle3,
    required this.icon,
    required this.progress,
    required this.loading,
  });

  static const light = HomeColorExt(
    background: AppColor.backgroundLight,
    appBarTitle: HomeColor.homeAppBarTitleLight,
    shortcutTitle: AppColor.black,
    title: AppColor.black,
    subTitle: AppColor.grey,
    circle1: HomeColor.homeLoadingCircle1Light,
    circle2: HomeColor.homeLoadingCircle2Light,
    circle3: HomeColor.homeLoadingCircle3Light,
    icon: AppColor.primary,
    progress: HomeColor.homeLoadingProgressLight,
    loading: AppColor.primary,
  );

  static const dark = HomeColorExt(
    background: AppColor.backgroundDark,
    appBarTitle: HomeColor.homeAppBarTitleDark,
    shortcutTitle: AppColor.black,
    title: HomeColor.homeAppBarTitleDark,
    subTitle: HomeColor.homeAppBarTitleDark,
    circle1: HomeColor.homeLoadingCircle1Dark,
    circle2: HomeColor.homeLoadingCircle2Dark,
    circle3: HomeColor.homeLoadingCircle3Dark,
    icon: AppColor.primary,
    progress: HomeColor.homeLoadingProgressDark,
    loading: AppColor.primary,
  );

  @override
  HomeColorExt copyWith({
    Color? background,
    Color? appBarTitle,
    Color? shortcutTitle,
    Color? title,
    Color? subTitle,
    Color? circle1,
    Color? circle2,
    Color? circle3,
    Color? icon,
    Color? progress,
    Color? loading,
  }) {
    if (background == null &&
        appBarTitle == null &&
        shortcutTitle == null &&
        title == null &&
        subTitle == null &&
        circle1 == null &&
        circle2 == null &&
        circle3 == null &&
        progress == null &&
        loading == null &&
        icon == null) {
      return this;
    }

    return HomeColorExt(
      background: background ?? this.background,
      appBarTitle: appBarTitle ?? this.appBarTitle,
      shortcutTitle: shortcutTitle ?? this.shortcutTitle,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      circle1: circle1 ?? this.circle1,
      circle2: circle2 ?? this.circle2,
      circle3: circle3 ?? this.circle3,
      progress: progress ?? this.progress,
      loading: loading ?? this.loading,
      icon: icon ?? this.icon,
    );
  }

  @override
  HomeColorExt lerp(ThemeExtension<HomeColorExt>? other, double t) {
    if (other is! HomeColorExt) {
      return this;
    }

    if (t == 0.0) {
      return this;
    }
    if (t == 1.0) {
      return other;
    }

    return HomeColorExt(
      background: Color.lerp(background, other.background, t),
      appBarTitle: Color.lerp(appBarTitle, other.appBarTitle, t),
      shortcutTitle: Color.lerp(shortcutTitle, other.shortcutTitle, t),
      title: Color.lerp(title, other.title, t),
      subTitle: Color.lerp(subTitle, other.subTitle, t),
      circle1: Color.lerp(circle1, other.circle1, t),
      circle2: Color.lerp(circle2, other.circle2, t),
      circle3: Color.lerp(circle3, other.circle3, t),
      progress: Color.lerp(progress, other.progress, t),
      loading: Color.lerp(loading, other.loading, t),
      icon: Color.lerp(icon, other.icon, t)
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HomeColorExt &&
        other.background == background &&
        other.appBarTitle == appBarTitle &&
        other.shortcutTitle == shortcutTitle &&
        other.title == title &&
        other.subTitle == subTitle &&
        other.circle1 == circle1 &&
        other.circle2 == circle2 &&
        other.circle3 == circle3 &&
        other.icon == icon &&
        other.progress == progress &&
        other.loading == loading;
  }

  @override
  int get hashCode => Object.hash(
    background,
    appBarTitle,
    shortcutTitle,
    title,
    subTitle,
    circle1,
    circle2,
    circle3,
    icon,
    progress,
    loading,
  );
}
