import 'package:bible_app/core/theme/splash/color/splash_color_ext.dart';
import 'package:bible_app/core/theme/splash/typography/splash_typography_ext.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class BibleSubTitle extends StatelessWidget {
  const BibleSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final splashTypography = Theme.of(
      context,
    ).extension<SplashTypographyExt>()!;
    final splashColor = Theme.of(context).extension<SplashColorExt>()!;
    return Text(
      appLocalizations.subTitle,
      style: splashTypography.subTitle.copyWith(color: splashColor.subTitle),
    );
  }
}
