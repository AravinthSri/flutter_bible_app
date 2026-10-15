import 'package:bible_app/data/datasource/settings/settings_local_datasource.dart';
import 'package:bible_app/presentation/settings/cubit/settings_state.dart';
import 'package:bible_app/presentation/settings/type/app_language.dart';
import 'package:bible_app/presentation/settings/type/app_theme_option.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit({required SettingsLocalDataSource localDataSource})
    : _localDataSource = localDataSource,
      super(const SettingsState());

  final SettingsLocalDataSource _localDataSource;

  Future<void> load() async {
    final language = await _localDataSource.getLanguage();
    final theme = await _localDataSource.getTheme();
    final packageInfo = await PackageInfo.fromPlatform();
    final appVersion = '${packageInfo.version}+${packageInfo.buildNumber}';

    emit(
      state.copyWith(
        language: language,
        theme: theme,
        appVersion: appVersion,
        isLoading: false,
      ),
    );
  }

  Future<void> setLanguage(AppLanguage language) async {
    if (state.language == language) {
      return;
    }
    await _localDataSource.saveLanguage(language);
    emit(state.copyWith(language: language));
  }

  Future<void> setTheme(AppThemeOption theme) async {
    if (state.theme == theme) {
      return;
    }
    await _localDataSource.saveTheme(theme);
    emit(state.copyWith(theme: theme));
  }
}
