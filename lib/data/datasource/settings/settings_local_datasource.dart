import 'package:bible_app/presentation/settings/type/app_language.dart';
import 'package:bible_app/presentation/settings/type/app_theme_option.dart';

abstract class SettingsLocalDataSource {
  Future<AppLanguage> getLanguage();

  Future<void> saveLanguage(AppLanguage language);

  Future<AppThemeOption> getTheme();

  Future<void> saveTheme(AppThemeOption theme);
}
