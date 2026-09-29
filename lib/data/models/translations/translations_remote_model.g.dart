// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translations_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TranslationsRemoteModel _$TranslationsRemoteModelFromJson(
  Map<String, dynamic> json,
) => _TranslationsRemoteModel(
  translations: (json['translations'] as List<dynamic>)
      .map(
        (e) => TranslationItemRemoteModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$TranslationsRemoteModelToJson(
  _TranslationsRemoteModel instance,
) => <String, dynamic>{'translations': instance.translations};

_TranslationItemRemoteModel _$TranslationItemRemoteModelFromJson(
  Map<String, dynamic> json,
) => _TranslationItemRemoteModel(
  identifier: json['identifier'] as String,
  name: json['name'] as String,
  language: json['language'] as String,
  languageCode: json['language_code'] as String,
  license: json['license'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$TranslationItemRemoteModelToJson(
  _TranslationItemRemoteModel instance,
) => <String, dynamic>{
  'identifier': instance.identifier,
  'name': instance.name,
  'language': instance.language,
  'language_code': instance.languageCode,
  'license': instance.license,
  'url': instance.url,
};
