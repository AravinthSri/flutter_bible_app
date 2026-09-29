import 'package:bible_app/core/network/dio_client.dart';
import 'package:bible_app/di/translation/translation_di.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<Dio>(() => DioClient.create());
  setupTranslationDependencies();
}
