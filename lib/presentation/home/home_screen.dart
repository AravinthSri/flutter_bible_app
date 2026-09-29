import 'package:bible_app/l10n/app_localizations.dart';
import 'package:bible_app/presentation/home/widgets/translation_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    //final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(appLocalizations.title)),
      body: const TranslationList(),
    );
  }
}
