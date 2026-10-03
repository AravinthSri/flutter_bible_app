import 'package:flutter/material.dart';

class HomeTypographyExt extends ThemeExtension<HomeTypographyExt> {
  final TextStyle title;
  final TextStyle loadingTitle;
  final TextStyle loadingDescription;
  final TextStyle itemTitle;
  final TextStyle itemDescription;
  final TextStyle itemShortUsername;
  final TextStyle? filterBottomSheetTitle;

  const HomeTypographyExt({
    required this.title,
    required this.loadingTitle,
    required this.loadingDescription,
    required this.itemTitle,
    required this.itemDescription,
    required this.itemShortUsername,
    required this.filterBottomSheetTitle,
  });

  @override
  HomeTypographyExt copyWith({
    TextStyle? title,
    TextStyle? loadingTitle,
    TextStyle? loadingDescription,
    TextStyle? itemTitle,
    TextStyle? itemDescription,
    TextStyle? itemShortUsername,
    TextStyle? filterBottomSheetTitle,
  }) {
    return HomeTypographyExt(
      title: title ?? this.title,
      loadingTitle: loadingTitle ?? this.loadingTitle,
      loadingDescription: loadingDescription ?? this.loadingDescription,
      itemTitle: itemTitle ?? this.itemTitle,
      itemDescription: itemDescription ?? this.itemDescription,
      itemShortUsername: itemShortUsername ?? this.itemShortUsername,
      filterBottomSheetTitle: filterBottomSheetTitle ?? this.filterBottomSheetTitle,
    );
  }

  @override
  HomeTypographyExt lerp(ThemeExtension<HomeTypographyExt>? other, double t) {
    if (other is! HomeTypographyExt) {
      return this;
    }
    return HomeTypographyExt(
      title: TextStyle.lerp(title, other.title, t)!,
      loadingTitle: TextStyle.lerp(loadingTitle, other.loadingTitle, t)!,
      loadingDescription: TextStyle.lerp(
        loadingDescription,
        other.loadingDescription,
        t,
      )!,
      itemTitle: TextStyle.lerp(itemTitle, other.itemTitle, t)!,
      itemDescription: TextStyle.lerp(
        itemDescription,
        other.itemDescription,
        t,
      )!,
      itemShortUsername: TextStyle.lerp(
        itemShortUsername,
        other.itemShortUsername,
        t,
      )!,
      filterBottomSheetTitle: TextStyle.lerp(
        filterBottomSheetTitle,
        other.filterBottomSheetTitle,
        t,
      )!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HomeTypographyExt &&
        other.title == title &&
        other.loadingTitle == loadingTitle &&
        other.loadingDescription == loadingDescription &&
        other.itemTitle == itemTitle &&
        other.itemDescription == itemDescription &&
        other.itemShortUsername == itemShortUsername
        && other.filterBottomSheetTitle == filterBottomSheetTitle;
  }

  @override
  int get hashCode => Object.hash(
    title,
    loadingTitle,
    loadingDescription,
    itemTitle,
    itemDescription,
    itemShortUsername,
    filterBottomSheetTitle,
  );
}
