import 'package:bible_app/core/theme/setting/color/setting_color_ext.dart';
import 'package:bible_app/core/theme/setting/typography/setting_typography_ext.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:bible_app/presentation/settings/cubit/settings_cubit.dart';
import 'package:bible_app/presentation/settings/cubit/settings_state.dart';
import 'package:bible_app/presentation/settings/type/app_language.dart';
import 'package:bible_app/presentation/settings/type/app_theme_option.dart';
import 'package:bible_app/presentation/settings/widgets/setting_radio_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final color = theme.extension<SettingColorExt>()!;
    final typography = theme.extension<SettingTypographyExt>()!;

    return Scaffold(
      backgroundColor: color.background,
      appBar: AppBar(
        backgroundColor: color.background,
        leading: const BackButton(),
        title: Text(
          l10n.settingsTitle,
          style: typography.title.copyWith(color: color.appBarTitle),
        ),
      ),
      body: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final cubit = context.read<SettingsCubit>();

          void selectLanguage(AppLanguage? language) {
            if (language != null) {
              cubit.setLanguage(language);
            }
          }

          void selectTheme(AppThemeOption? theme) {
            if (theme != null) {
              cubit.setTheme(theme);
            }
          }

          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.settingsAppLanguageTitle,
                        style: typography.appLanguageTitle.copyWith(
                          color: color.title,
                        ),
                      ),
                      const SizedBox(height: 8),
                      RadioGroup<AppLanguage>(
                        groupValue: state.language,
                        onChanged: selectLanguage,
                        child: Column(
                          children: [
                            SettingRadioTile<AppLanguage>(
                              value: AppLanguage.english,
                              label: l10n.settingsEnglish,
                              labelStyle: typography.english,
                              onRowTap: () =>
                                  selectLanguage(AppLanguage.english),
                            ),
                            SettingRadioTile<AppLanguage>(
                              value: AppLanguage.tamil,
                              label: l10n.settingsTamil,
                              labelStyle: typography.tamil,
                              onRowTap: () => selectLanguage(AppLanguage.tamil),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        l10n.settingsThemeTitle,
                        style: typography.themeTitle.copyWith(
                          color: color.title,
                        ),
                      ),
                      const SizedBox(height: 8),
                      RadioGroup<AppThemeOption>(
                        groupValue: state.theme,
                        onChanged: selectTheme,
                        child: Column(
                          children: [
                            SettingRadioTile<AppThemeOption>(
                              value: AppThemeOption.light,
                              label: l10n.settingsLight,
                              labelStyle: typography.light,
                              onRowTap: () =>
                                  selectTheme(AppThemeOption.light),
                            ),
                            SettingRadioTile<AppThemeOption>(
                              value: AppThemeOption.dark,
                              label: l10n.settingsDark,
                              labelStyle: typography.dark,
                              onRowTap: () => selectTheme(AppThemeOption.dark),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
                  child: Text(
                    '${l10n.settingsAppVersionLabel}: ${state.appVersion}',
                    style: typography.appVersion.copyWith(
                      color: color.subTitle,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
