import 'package:bible_app/core/theme/home/typography/home_typography_ext.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:bible_app/presentation/home/widgets/loading/loading_bible_icon.dart';
import 'package:flutter/material.dart';

class TranslationLoadingView extends StatelessWidget {
  const TranslationLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final typography = theme.extension<HomeTypographyExt>()!;
    final localizations = AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LoadingBibleIcon(),
          const SizedBox(height: 16),
          Text(
            localizations.homeLoadingContent,
            style: typography.loadingTitle,
          ),
          const SizedBox(height: 8),
          Text(
            localizations.homeLoadingDescription,
            style: typography.loadingDescription,
          ),
        ],
      ),
    );
  }
}
