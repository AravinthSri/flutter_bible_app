import 'package:bible_app/core/theme/home/color/home/home_color_ext.dart';
import 'package:bible_app/core/theme/home/typography/home_typography_ext.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:bible_app/presentation/home/widgets/list/translation_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final color = theme.extension<HomeColorExt>()!;
    final typography = theme.extension<HomeTypographyExt>()!;
    return Scaffold(
      backgroundColor: color.background,
      appBar: AppBar(
        backgroundColor: color.background,
        title: Text(appLocalizations.homeScreenTitle, style: typography.title.copyWith(color: color.appBarTitle)),
      ),
      body: const TranslationList(),
    );
  }
}
