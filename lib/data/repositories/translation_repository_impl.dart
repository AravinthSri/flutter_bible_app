import 'package:bible_app/core/network/dio_exception_mapper.dart';
import 'package:bible_app/data/datasoruce/translation/translation_remote_datasource.dart';
import 'package:bible_app/data/mappers/translation_mapper.dart';
import 'package:bible_app/domain/repositories/translation_repository.dart';
import 'package:bible_app/domain/entities/translations_entities.dart';
import 'package:dio/dio.dart';

class TranslationRepositoryImpl implements TranslationRepository {
  final TranslationRemoteDataSource remoteDataSource;

  TranslationRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<TranslationItemEntities>> getTranslations() async {
    try {
      final remoteModel = await remoteDataSource.getTranslations();
     return TranslationMapper
        .toEntity(remoteModel)
        .translations;
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToNetworkException(e);
    }
  }
}
