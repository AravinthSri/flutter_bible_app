import 'package:flutter/material.dart';

class SettingTypographyExt extends ThemeExtension<SettingTypographyExt> {
  const SettingTypographyExt({
    required this.title,
    required this.appLanguageTitle,
    required this.english,
    required this.tamil,
    required this.themeTitle,
    required this.light,
    required this.dark,
    required this.appVersion,
  });

  final TextStyle title;
  final TextStyle appLanguageTitle;
  final TextStyle english;
  final TextStyle tamil;
  final TextStyle themeTitle;
  final TextStyle light;
  final TextStyle dark;
  final TextStyle appVersion;

  @override
  SettingTypographyExt copyWith({
    TextStyle? title,
    TextStyle? appLanguageTitle,
    TextStyle? english,
    TextStyle? tamil,
    TextStyle? themeTitle,
    TextStyle? light,
    TextStyle? dark,
    TextStyle? appVersion,
  }) {
    return SettingTypographyExt(
      title: title ?? this.title,
      appLanguageTitle: appLanguageTitle ?? this.appLanguageTitle,
      english: english ?? this.english,
      tamil: tamil ?? this.tamil,
      themeTitle: themeTitle ?? this.themeTitle,
      light: light ?? this.light,
      dark: dark ?? this.dark,
      appVersion: appVersion ?? this.appVersion,
    );
  }

  @override
  SettingTypographyExt lerp(
    ThemeExtension<SettingTypographyExt>? other,
    double t,
  ) {
    if (other is! SettingTypographyExt) {
      return this;
    }
    return SettingTypographyExt(
      title: TextStyle.lerp(title, other.title, t)!,
      appLanguageTitle:
          TextStyle.lerp(appLanguageTitle, other.appLanguageTitle, t)!,
      english: TextStyle.lerp(english, other.english, t)!,
      tamil: TextStyle.lerp(tamil, other.tamil, t)!,
      themeTitle: TextStyle.lerp(themeTitle, other.themeTitle, t)!,
      light: TextStyle.lerp(light, other.light, t)!,
      dark: TextStyle.lerp(dark, other.dark, t)!,
      appVersion: TextStyle.lerp(appVersion, other.appVersion, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SettingTypographyExt &&
        other.title == title &&
        other.appLanguageTitle == appLanguageTitle &&
        other.english == english &&
        other.tamil == tamil &&
        other.themeTitle == themeTitle &&
        other.light == light &&
        other.dark == dark &&
        other.appVersion == appVersion;
  }

  @override
  int get hashCode => Object.hash(
        title,
        appLanguageTitle,
        english,
        tamil,
        themeTitle,
        light,
        dark,
        appVersion,
      );
}
