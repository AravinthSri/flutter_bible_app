import 'package:bible_app/core/theme/app_color.dart';
import 'package:bible_app/core/theme/setting/color/setting_color.dart';
import 'package:flutter/material.dart';

class SettingColorExt extends ThemeExtension<SettingColorExt> {
  const SettingColorExt({
    required this.background,
    required this.appBarTitle,
    required this.title,
    required this.subTitle,
    required this.radioSelected,
  });

  final Color background;
  final Color appBarTitle;
  final Color title;
  final Color subTitle;
  final Color radioSelected;

  static const light = SettingColorExt(
    background: AppColor.backgroundLight,
    appBarTitle: SettingColor.appBarTitleLight,
    title: SettingColor.titleLight,
    subTitle: SettingColor.subTitleLight,
    radioSelected: AppColor.primary,
  );

  static const dark = SettingColorExt(
    background: AppColor.backgroundDark,
    appBarTitle: SettingColor.appBarTitleDark,
    title: SettingColor.titleDark,
    subTitle: SettingColor.subTitleDark,
    radioSelected: AppColor.primary,
  );

  @override
  SettingColorExt copyWith({
    Color? background,
    Color? appBarTitle,
    Color? title,
    Color? subTitle,
    Color? radioSelected,
  }) {
    if (background == null &&
        appBarTitle == null &&
        title == null &&
        subTitle == null &&
        radioSelected == null) {
      return this;
    }

    return SettingColorExt(
      background: background ?? this.background,
      appBarTitle: appBarTitle ?? this.appBarTitle,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      radioSelected: radioSelected ?? this.radioSelected,
    );
  }

  @override
  SettingColorExt lerp(ThemeExtension<SettingColorExt>? other, double t) {
    if (other is! SettingColorExt) {
      return this;
    }

    if (t == 0.0) {
      return this;
    }
    if (t == 1.0) {
      return other;
    }

    return SettingColorExt(
      background: Color.lerp(background, other.background, t)!,
      appBarTitle: Color.lerp(appBarTitle, other.appBarTitle, t)!,
      title: Color.lerp(title, other.title, t)!,
      subTitle: Color.lerp(subTitle, other.subTitle, t)!,
      radioSelected: Color.lerp(radioSelected, other.radioSelected, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SettingColorExt &&
        other.background == background &&
        other.appBarTitle == appBarTitle &&
        other.title == title &&
        other.subTitle == subTitle &&
        other.radioSelected == radioSelected;
  }

  @override
  int get hashCode => Object.hash(
        background,
        appBarTitle,
        title,
        subTitle,
        radioSelected,
      );
}
