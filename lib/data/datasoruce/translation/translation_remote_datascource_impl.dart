import 'package:bible_app/core/network/api_endpoints.dart';
import 'package:bible_app/data/datasoruce/translation/translation_remote_datasource.dart';
import 'package:bible_app/data/models/translations/translations_remote_model.dart';
import 'package:dio/dio.dart';

class TranslationRemoteDataSourceImpl implements TranslationRemoteDataSource {
  final Dio dio;
  TranslationRemoteDataSourceImpl({required this.dio});

  @override
  Future<TranslationsRemoteModel> getTranslations() async {
    final response = await dio.get(ApiEndpoints.translations);
    return TranslationsRemoteModel.fromJson(response.data);
  }
}
