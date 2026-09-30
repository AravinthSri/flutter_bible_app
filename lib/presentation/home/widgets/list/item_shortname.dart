import 'package:bible_app/core/theme/home/color/home/home_color_ext.dart';
import 'package:bible_app/core/theme/home/typography/home_typography_ext.dart';
import 'package:bible_app/core/utils/avatar_colors_utils.dart';
import 'package:bible_app/core/utils/name_utils.dart';
import 'package:flutter/material.dart';

class ShortName extends StatelessWidget {
  final String name;
  final int index;

  const ShortName({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.extension<HomeColorExt>()!;
    final typography = theme.extension<HomeTypographyExt>()!;
    final shortName = NameUtils.getShortName(name);
    final shortNameColor = AvatarColorUtils.getAvatarColor(context, index);
    return Container(
      width: 72.0,
      height: 56.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(
        left: 8.0,
        right: 16.0,
        top: 8.0,
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: shortNameColor,
      ),
      child: Text(
        shortName,
        style: typography.itemTitle.copyWith(
          color: color.shortcutTitle,
          fontSize: 22.0,
        ),
      ),
    );
  }
}
