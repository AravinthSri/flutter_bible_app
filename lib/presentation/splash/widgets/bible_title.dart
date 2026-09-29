import 'package:bible_app/core/theme/splash/color/splash_color_ext.dart';
import 'package:bible_app/core/theme/splash/typography/splash_typography_ext.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class BibleTitle extends StatelessWidget {
  const BibleTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final splashTypography = theme.extension<SplashTypographyExt>()!;
    final splashColor = theme.extension<SplashColorExt>()!;
    return Text(
      appLocalizations.title,
      style: splashTypography.title.copyWith(color: splashColor.title),
    );
  }
}
