import 'package:bible_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class HomeBottomSheetColorFilterExt
    extends ThemeExtension<HomeBottomSheetColorFilterExt> {
  final Color? background;
  final Color? title;
  final Color? filterItemTitleDefault;
  final Color? filterItemTitleSelected;
  final Color? filterItemDefaultBackground;
  final Color? filterItemSelectedBackground;
  final Color? filterItemDefaultBorder;
  final Color? filterItemSelectedBorder;
  final Color? buttonCancelBackground;
  final Color? buttonCancelBorder;
  final Color? buttonCancelText;
  final Color? buttonApplyBackground;
  final Color? buttonApplyText;

  const HomeBottomSheetColorFilterExt({
    required this.background,
    required this.title,
    required this.filterItemTitleDefault,
    required this.filterItemTitleSelected,
    required this.filterItemDefaultBackground,
    required this.filterItemSelectedBackground,
    required this.buttonCancelBackground,
    required this.buttonCancelBorder,
    required this.buttonCancelText,
    required this.buttonApplyBackground,
    required this.buttonApplyText, 
    required this.filterItemDefaultBorder, 
    required this.filterItemSelectedBorder,
  });

  static final light = HomeBottomSheetColorFilterExt(
    background: AppColor.white,
    title: AppColor.black,
    filterItemTitleDefault: AppColor.black,
    filterItemTitleSelected: AppColor.primary,
    filterItemDefaultBackground: const Color(0xFFfffeff),
    filterItemSelectedBackground: const Color(0xFFecf4fe),
    buttonCancelBackground: const Color(0xFFecf4fe),
    buttonCancelBorder: AppColor.primary,
    buttonCancelText: AppColor.black,
    buttonApplyBackground: AppColor.primary,
    buttonApplyText: AppColor.white,
    filterItemDefaultBorder: Colors.transparent,
    filterItemSelectedBorder: AppColor.primary,
  );

  static const dark = HomeBottomSheetColorFilterExt(
    background: Color(0xFF0e1c2e),
    title: AppColor.white,
    filterItemTitleDefault: AppColor.white,
    filterItemTitleSelected: AppColor.white,
    filterItemDefaultBackground: Color(0xFF0e1c2e),
    filterItemSelectedBackground: Color(0xFF10294c),
    buttonCancelBackground: Color(0xFF10294c),
    buttonCancelBorder: AppColor.primary,
    buttonCancelText: AppColor.primary,
    buttonApplyBackground: AppColor.primary,
    buttonApplyText: AppColor.white,
    filterItemDefaultBorder: Colors.transparent,
    filterItemSelectedBorder: Color(0xFF10294c),

  );

  @override
  HomeBottomSheetColorFilterExt copyWith({
    Color? background,
    Color? title,
    Color? filterItemTitleDefault,
    Color? filterItemTitleSelected,
    Color? filterItemDefaultBackground,
    Color? filterItemSelectedBackground,
    Color? filterItemDefaultBorder,
    Color? filterItemSelectedBorder,
    Color? buttonCancelBackground,
    Color? buttonCancelBorder,
    Color? buttonCancelText,
    Color? buttonApplyBackground,
    Color? buttonApplyText,
  }) {
    if (background == null &&
        title == null &&
        filterItemTitleDefault == null &&
        filterItemTitleSelected == null &&
        filterItemDefaultBackground == null &&
        filterItemSelectedBackground == null &&
        filterItemDefaultBorder == null &&
        filterItemSelectedBorder == null &&
        buttonCancelBackground == null &&
        buttonCancelBorder == null &&
        buttonCancelText == null &&
        buttonApplyBackground == null &&
        buttonApplyText == null) {
      return this;
    }

    return HomeBottomSheetColorFilterExt(
      background: background ?? this.background,
      title: title ?? this.title,
      filterItemTitleDefault:
          filterItemTitleDefault ?? this.filterItemTitleDefault,
      filterItemTitleSelected:
          filterItemTitleSelected ?? this.filterItemTitleSelected,
      filterItemDefaultBackground:
          filterItemDefaultBackground ?? this.filterItemDefaultBackground,
      filterItemSelectedBackground:
          filterItemSelectedBackground ?? this.filterItemSelectedBackground,
      filterItemDefaultBorder:
          filterItemDefaultBorder ?? this.filterItemDefaultBorder,
      filterItemSelectedBorder:
          filterItemSelectedBorder ?? this.filterItemSelectedBorder,    
      buttonCancelBackground:
          buttonCancelBackground ?? this.buttonCancelBackground,
      buttonCancelBorder:
          buttonCancelBorder ?? this.buttonCancelBorder,    
      buttonCancelText: buttonCancelText ?? this.buttonCancelText,
      buttonApplyBackground:
          buttonApplyBackground ?? this.buttonApplyBackground,
      buttonApplyText: buttonApplyText ?? this.buttonApplyText,
    );
  }

  @override
  ThemeExtension<HomeBottomSheetColorFilterExt> lerp(
    covariant ThemeExtension<HomeBottomSheetColorFilterExt>? other,
    double t,
  ) {
    if (other is! HomeBottomSheetColorFilterExt) {
      return this;
    }

    if (t == 0.0) {
      return this;
    }
    if (t == 1.0) {
      return other;
    }

    return HomeBottomSheetColorFilterExt(
      background: Color.lerp(background, other.background, t),
      title: Color.lerp(title, other.title, t),
      filterItemTitleDefault: Color.lerp(
        filterItemTitleDefault,
        other.filterItemTitleDefault,
        t,
      ),
      filterItemTitleSelected: Color.lerp(
        filterItemTitleSelected,
        other.filterItemTitleSelected,
        t,
      ),
      filterItemDefaultBackground: Color.lerp(
        filterItemDefaultBackground,
        other.filterItemDefaultBackground,
        t,
      ),
      filterItemSelectedBackground: Color.lerp(
        filterItemSelectedBackground,
        other.filterItemSelectedBackground,
        t,
      ),
      filterItemDefaultBorder: Color.lerp(
        filterItemDefaultBorder,
        other.filterItemDefaultBorder,
        t,
      ),
      filterItemSelectedBorder: Color.lerp(
        filterItemSelectedBorder,
        other.filterItemSelectedBorder,
        t,
      ),
      buttonCancelBackground: Color.lerp(
        buttonCancelBackground,
        other.buttonCancelBackground,
        t,
      ),
      buttonCancelBorder: Color.lerp(
        buttonCancelBorder,
        other.buttonCancelBorder,
        t,
      ),
      buttonCancelText: Color.lerp(buttonCancelText, other.buttonCancelText, t),
      buttonApplyBackground: Color.lerp(
        buttonApplyBackground,
        other.buttonApplyBackground,
        t,
      ),
      buttonApplyText: Color.lerp(buttonApplyText, other.buttonApplyText, t),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomeBottomSheetColorFilterExt &&
        other.background == background &&
        other.title == title &&
        other.filterItemTitleDefault == filterItemTitleDefault &&
        other.filterItemTitleSelected == filterItemTitleSelected &&
        other.filterItemDefaultBackground == filterItemDefaultBackground &&
        other.filterItemSelectedBackground == filterItemSelectedBackground &&
        other.filterItemDefaultBorder == filterItemDefaultBorder &&
        other.filterItemSelectedBorder == filterItemSelectedBorder &&
        other.buttonCancelBackground == buttonCancelBackground &&
        other.buttonCancelBorder == buttonCancelBorder &&
        other.buttonCancelText == buttonCancelText &&
        other.buttonApplyBackground == buttonApplyBackground &&
        other.buttonApplyText == buttonApplyText;
  }

  @override
  int get hashCode {
    return Object.hash(
      background,
      title,
      filterItemTitleDefault,
      filterItemTitleSelected,
      filterItemDefaultBackground,
      filterItemSelectedBackground,
      filterItemDefaultBorder,
      filterItemSelectedBorder,
      buttonCancelBackground,
      buttonCancelBorder,
      buttonCancelText,
      buttonApplyBackground,
      buttonApplyText,
    );
  }
}
