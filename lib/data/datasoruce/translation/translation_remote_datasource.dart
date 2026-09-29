import 'package:bible_app/data/models/translations/translations_remote_model.dart';

abstract class TranslationRemoteDataSource {
  Future<TranslationsRemoteModel> getTranslations();
}