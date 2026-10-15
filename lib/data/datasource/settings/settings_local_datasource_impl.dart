import 'package:bible_app/data/datasource/settings/settings_local_datasource.dart';
import 'package:bible_app/presentation/settings/type/app_language.dart';
import 'package:bible_app/presentation/settings/type/app_theme_option.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  SettingsLocalDataSourceImpl({required SharedPreferences preferences})
      : _preferences = preferences;

  static const _localeKey = 'settings_locale';
  static const _themeKey = 'settings_theme';

  final SharedPreferences _preferences;

  @override
  Future<AppLanguage> getLanguage() async {
    return AppLanguage.fromStorageKey(_preferences.getString(_localeKey));
  }

  @override
  Future<void> saveLanguage(AppLanguage language) async {
    await _preferences.setString(_localeKey, language.storageKey);
  }

  @override
  Future<AppThemeOption> getTheme() async {
    return AppThemeOption.fromStorageKey(_preferences.getString(_themeKey));
  }

  @override
  Future<void> saveTheme(AppThemeOption theme) async {
    await _preferences.setString(_themeKey, theme.storageKey);
  }
}
