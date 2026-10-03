import 'package:bible_app/core/theme/home/color/home/home_bottom_sheet_filter_color_ext.dart';
import 'package:bible_app/core/theme/home/typography/home_typography_ext.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class LanguageFilterTitle extends StatelessWidget {
  const LanguageFilterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.extension<HomeBottomSheetColorFilterExt>()!;
    final typography = theme.extension<HomeTypographyExt>()!;
    final localizations = AppLocalizations.of(context)!;
    return Text(
      localizations.homeBottomFilterTitle,
      style: typography.filterBottomSheetTitle?.copyWith(color: color.title),
    );
  }
}
