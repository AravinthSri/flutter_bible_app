import 'package:bible_app/core/theme/home/color/avatar/avatar_colors.dart';
import 'package:flutter/material.dart';

class AvatarColorExtension extends ThemeExtension<AvatarColorExtension> {
  final List<Color> colors;

  const AvatarColorExtension({required this.colors});

  static const light = AvatarColorExtension(colors: AvatarColors.light);
  static const dark = AvatarColorExtension(colors: AvatarColors.dark);

  @override
  AvatarColorExtension copyWith({List<Color>? colors}) {
    return AvatarColorExtension(colors: colors ?? this.colors);
  }

  @override
  AvatarColorExtension lerp(
    ThemeExtension<AvatarColorExtension>? other,
    double t,
  ) {
    if (other is! AvatarColorExtension) return this;

    return AvatarColorExtension(colors: colors);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AvatarColorExtension &&
          runtimeType == other.runtimeType &&
          colors == other.colors;

  @override
  int get hashCode => colors.hashCode;
}
