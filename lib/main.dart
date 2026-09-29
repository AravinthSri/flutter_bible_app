import 'package:bible_app/app/router/app_router.dart';
import 'package:bible_app/core/di/injection.dart';
import 'package:bible_app/core/theme/app_theme.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:bible_app/presentation/home/bloc/translation_bloc.dart';
import 'package:bible_app/presentation/home/bloc/translation_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupDependencies();
  runApp(
    BlocProvider(create: (context) => getIt<TranslationBloc>()
    ..add(const GetTranslations()), child: const MyApp()),
  );
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
