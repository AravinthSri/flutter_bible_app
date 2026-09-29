import 'package:bible_app/data/datasoruce/translation/translation_remote_datascource_impl.dart';
import 'package:bible_app/data/datasoruce/translation/translation_remote_datasource.dart';
import 'package:bible_app/domain/repositories/translation_repository.dart';
import 'package:bible_app/domain/usecases/get_translation_usecase.dart';
import 'package:bible_app/data/repositories/translation_repository_impl.dart';
import 'package:bible_app/presentation/home/bloc/translation_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupTranslationDependencies() {
  getIt.registerLazySingleton<TranslationRemoteDataSource>(
    () => TranslationRemoteDataSourceImpl(
      dio: getIt(),
    ),
  );

  getIt.registerLazySingleton<TranslationRepository>(
    () => TranslationRepositoryImpl(
      remoteDataSource: getIt(),
    ),
  );

  getIt.registerLazySingleton<GetTranslationUsecase>(
    () => GetTranslationUsecase(
      repository: getIt(),
    ),
  );

  getIt.registerFactory<TranslationBloc>(
    () => TranslationBloc(
      getTranslationUseCase: getIt(),
    ),
  );
}