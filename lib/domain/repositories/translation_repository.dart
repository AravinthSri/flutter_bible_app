import 'package:bible_app/domain/entities/translations_entities.dart';

abstract class TranslationRepository {
  Future<List<TranslationItemEntities>> getTranslations();
}