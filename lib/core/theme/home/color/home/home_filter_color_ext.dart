import 'package:bible_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class HomeFilterColorExt extends ThemeExtension<HomeFilterColorExt> {
   final Color? filterChipBackgroundDefault;
  final Color? filterChipBackgroundSelected;
  final Color? filterChipTextDefault;
  final Color? filterChipTextSelected;
  final Color? filterChipCheckmarkColor;
  final Color? filterIconColor;
  final Color? filterIconBackground;

  const HomeFilterColorExt({
    required this.filterChipBackgroundDefault,
    required this.filterChipBackgroundSelected,
    required this.filterChipTextDefault,
    required this.filterChipTextSelected,
    required this.filterChipCheckmarkColor,
    required this.filterIconColor,
    required this.filterIconBackground,
  });

  static const light = HomeFilterColorExt(
    filterChipBackgroundDefault: Color(0xFFF1F3F5),
    filterChipBackgroundSelected: AppColor.primary,
    filterChipTextDefault: Color(0xFF505152),
    filterChipTextSelected: AppColor.white,
    filterIconColor: Color(0xFF505152),
    filterIconBackground: Color(0xFFF1F3F5),
    filterChipCheckmarkColor: AppColor.white,
  );

  static const dark = HomeFilterColorExt(
    filterChipBackgroundDefault: Color(0xFF101925),
    filterChipBackgroundSelected: AppColor.primary,
    filterChipTextDefault: Color(0xFFBDC5D2),
    filterChipTextSelected: AppColor.white,
    filterIconColor: Color(0xFFBDC5D2),
    filterIconBackground:Color(0xFF16212F),
    filterChipCheckmarkColor: AppColor.white,
  );

  @override
  HomeFilterColorExt copyWith({
    Color? filterChipBackgroundDefault,
    Color? filterChipBackgroundSelected,
    Color? filterChipTextDefault,
    Color? filterChipTextSelected,
    Color? filterChipCheckmarkColor,
    Color? filterIconColor,
    Color? filterIconBackground,
  }) {

    if (filterChipBackgroundDefault == null &&
        filterChipBackgroundSelected == null &&
        filterChipTextDefault == null &&
        filterChipTextSelected == null &&
        filterChipCheckmarkColor == null &&
        filterIconColor == null &&
        filterIconBackground == null) {
      return this;
    }

    return HomeFilterColorExt(
      filterChipBackgroundDefault: filterChipBackgroundDefault ?? this.filterChipBackgroundDefault,
      filterChipBackgroundSelected: filterChipBackgroundSelected ?? this.filterChipBackgroundSelected,
      filterChipTextDefault: filterChipTextDefault ?? this.filterChipTextDefault,
      filterChipTextSelected: filterChipTextSelected ?? this.filterChipTextSelected,
      filterChipCheckmarkColor: filterChipCheckmarkColor ?? this.filterChipCheckmarkColor,
      filterIconColor: filterIconColor ?? this.filterIconColor,
      filterIconBackground: filterIconBackground ?? this.filterIconBackground,
    );
  }

  @override
  HomeFilterColorExt lerp(ThemeExtension<HomeFilterColorExt>? other, double t) {
    if (other is! HomeFilterColorExt) {
      return this;
    }

    if (t == 0.0) {
      return this;
    }
    if (t == 1.0) {
      return other;
    }

    return HomeFilterColorExt(
      filterChipBackgroundDefault: Color.lerp(filterChipBackgroundDefault, other.filterChipBackgroundDefault, t),
      filterChipBackgroundSelected: Color.lerp(filterChipBackgroundSelected, other.filterChipBackgroundSelected, t),
      filterChipTextDefault: Color.lerp(filterChipTextDefault, other.filterChipTextDefault, t),
      filterChipTextSelected: Color.lerp(filterChipTextSelected, other.filterChipTextSelected, t),
      filterChipCheckmarkColor: Color.lerp(filterChipCheckmarkColor, other.filterChipCheckmarkColor, t),
      filterIconColor: Color.lerp(filterIconColor, other.filterIconColor, t),
      filterIconBackground: Color.lerp(filterIconBackground, other.filterIconBackground, t),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is HomeFilterColorExt &&
        other.filterChipBackgroundDefault == filterChipBackgroundDefault &&
        other.filterChipBackgroundSelected == filterChipBackgroundSelected &&
        other.filterChipTextDefault == filterChipTextDefault &&
        other.filterChipTextSelected == filterChipTextSelected &&
        other.filterChipCheckmarkColor == filterChipCheckmarkColor &&
        other.filterIconColor == filterIconColor &&
        other.filterIconBackground == filterIconBackground;
  }

  @override
  int get hashCode => Object.hash(
        filterChipBackgroundDefault,
        filterChipBackgroundSelected,
        filterChipTextDefault,
        filterChipTextSelected,
        filterChipCheckmarkColor,
        filterIconColor,
        filterIconBackground,
      );
}