import 'package:bible_app/core/theme/home/color/home/home_color_ext.dart';
import 'package:bible_app/core/theme/home/typography/home_typography_ext.dart';
import 'package:flutter/material.dart';

class TranslationItemInfoView extends StatelessWidget {
  final String name;
  final String language;

  const TranslationItemInfoView({
    super.key,
    required this.name,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.extension<HomeColorExt>()!;
    final typography = theme.extension<HomeTypographyExt>()!;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: typography.itemTitle.copyWith(color: color.title),
          ),
          Text(
            language,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: typography.itemDescription.copyWith(color: color.subTitle),
          ),
        ],
      ),
    );
  }
}
