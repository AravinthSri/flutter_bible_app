class TranslationsEntities {
  final List<TranslationItemEntities> translations;
  const TranslationsEntities({required this.translations});
}

class TranslationItemEntities {
  final String identifier;
  final String name;
  final String language;
  final String languageCode;
  final String license;
  final String url;

  const TranslationItemEntities({
    required this.identifier,
    required this.name,
    required this.language,
    required this.languageCode,
    required this.license,
    required this.url,
  });
}