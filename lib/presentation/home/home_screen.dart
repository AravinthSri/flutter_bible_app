import 'package:bible_app/core/di/injection.dart';
import 'package:bible_app/core/theme/home/color/home/home_color_ext.dart';
import 'package:bible_app/core/theme/home/typography/home_typography_ext.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:bible_app/presentation/home/bloc/translation/translation_bloc.dart';
import 'package:bible_app/presentation/home/bloc/translation/translation_event.dart';
import 'package:bible_app/presentation/home/cubit/filter/filter_cubit.dart';
import 'package:bible_app/presentation/home/widgets/list/translation_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final color = theme.extension<HomeColorExt>()!;
    final typography = theme.extension<HomeTypographyExt>()!;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<TranslationBloc>()..add(const GetTranslations()),
        ),

        BlocProvider(create: (_) => getIt<FilterCubit>()),
      ],
      child: Scaffold(
        backgroundColor: color.background,
        appBar: AppBar(
          backgroundColor: color.background,
          title: Text(
            appLocalizations.homeScreenTitle,
            style: typography.title.copyWith(color: color.appBarTitle),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // TODO: Open Settings
              },
              icon: const Icon(Icons.settings_outlined),
            ),
          ],
        ),
        body: const TranslationList(),
      ),
    );
  }
}
