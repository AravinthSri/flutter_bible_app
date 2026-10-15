import 'package:bible_app/data/datasource/settings/settings_local_datasource.dart';
import 'package:bible_app/data/datasource/settings/settings_local_datasource_impl.dart';
import 'package:bible_app/presentation/settings/cubit/settings_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupSettingsDependencies() async {
  final preferences = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<SharedPreferences>(() => preferences);

  getIt.registerLazySingleton<SettingsLocalDataSource>(
    () => SettingsLocalDataSourceImpl(preferences: getIt()),
  );

  getIt.registerLazySingleton<SettingsCubit>(
    () => SettingsCubit(localDataSource: getIt()),
  );
}
