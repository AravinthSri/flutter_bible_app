import 'package:bible_app/domain/entities/translations_entities.dart';
import 'package:bible_app/domain/repositories/translation_repository.dart';

class GetTranslationUsecase {
  final TranslationRepository repository;
  GetTranslationUsecase({required this.repository});
  Future<List<TranslationItemEntities>> call() async {
    return await repository.getTranslations();
  }
}
