import 'package:bible_app/data/models/translations/translations_remote_model.dart';
import 'package:bible_app/domain/entities/translations_entities.dart';

class TranslationMapper {
  static TranslationsEntities toEntity(TranslationsRemoteModel remoteData) {
    return TranslationsEntities(
      translations: remoteData.translations
          .map((translation) => _toEntityItem(translation))
          .toList(),
    );
  }

  static TranslationItemEntities _toEntityItem(
    TranslationItemRemoteModel remoteData,
  ) {
    return TranslationItemEntities(
      identifier: remoteData.identifier,
      name: remoteData.name,
      language: remoteData.language,
      languageCode: remoteData.languageCode,
      license: remoteData.license,
      url: remoteData.url,
    );
  }
}
