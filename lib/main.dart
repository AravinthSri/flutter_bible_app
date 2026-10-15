import 'package:bible_app/app/router/app_router.dart';
import 'package:bible_app/core/di/injection.dart';
import 'package:bible_app/core/theme/app_theme.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:bible_app/presentation/settings/cubit/settings_cubit.dart';
import 'package:bible_app/presentation/settings/cubit/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>(
      create: (_) => getIt<SettingsCubit>()..load(),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        buildWhen: (previous, current) =>
            previous.language != current.language ||
            previous.theme != current.theme ||
            previous.isLoading != current.isLoading,
        builder: (context, state) {
          final locale = state.language.locale;

          return MaterialApp.router(
            routerConfig: appRouter,
            locale: locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            title: 'Flutter Demo',
            theme: AppTheme.lightTheme(locale),
            darkTheme: AppTheme.darkTheme(locale),
            themeMode: state.theme.themeMode,
          );
        },
      ),
    );
  }
}
