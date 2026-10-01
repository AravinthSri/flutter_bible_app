import 'package:bible_app/app/router/app_router.dart';
import 'package:bible_app/core/di/injection.dart';
import 'package:bible_app/core/theme/app_theme.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const _locale = Locale('en');

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      locale: _locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme(_locale),
      darkTheme: AppTheme.darkTheme(_locale),
      themeMode: ThemeMode.system,
    );
  }
}
