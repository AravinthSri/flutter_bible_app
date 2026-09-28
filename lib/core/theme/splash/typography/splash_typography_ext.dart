import 'package:flutter/material.dart';

class SplashTypographyExt extends ThemeExtension<SplashTypographyExt> {
  const SplashTypographyExt({required this.title, required this.subTitle});

  final TextStyle title;
  final TextStyle subTitle;

  @override
  ThemeExtension<SplashTypographyExt> copyWith({
    TextStyle? title,
    TextStyle? subTitle,
  }) {
    return SplashTypographyExt(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
    );
  }

  @override
  ThemeExtension<SplashTypographyExt> lerp(
    covariant ThemeExtension<SplashTypographyExt>? other,
    double t,
  ) {
    if (other is! SplashTypographyExt) {
      return this;
    }
    return SplashTypographyExt(
      title: TextStyle.lerp(title, other.title, t)!,
      subTitle: TextStyle.lerp(subTitle, other.subTitle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SplashTypographyExt &&
        other.title == title &&
        other.subTitle == subTitle;
  }

  @override
  int get hashCode => Object.hash(title, subTitle);
}
