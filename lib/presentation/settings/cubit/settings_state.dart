import 'package:bible_app/presentation/settings/type/app_language.dart';
import 'package:bible_app/presentation/settings/type/app_theme_option.dart';
import 'package:equatable/equatable.dart';

class SettingsState extends Equatable {
  const SettingsState({
    this.language = AppLanguage.english,
    this.theme = AppThemeOption.light,
    this.appVersion = '',
    this.isLoading = true,
  });

  final AppLanguage language;
  final AppThemeOption theme;
  final String appVersion;
  final bool isLoading;

  SettingsState copyWith({
    AppLanguage? language,
    AppThemeOption? theme,
    String? appVersion,
    bool? isLoading,
  }) {
    return SettingsState(
      language: language ?? this.language,
      theme: theme ?? this.theme,
      appVersion: appVersion ?? this.appVersion,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [language, theme, appVersion, isLoading];
}
