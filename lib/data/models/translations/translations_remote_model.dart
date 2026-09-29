import 'package:freezed_annotation/freezed_annotation.dart';

part 'translations_remote_model.freezed.dart';
part 'translations_remote_model.g.dart';

@freezed
abstract class TranslationsRemoteModel with _$TranslationsRemoteModel {
  const factory TranslationsRemoteModel({
    required List<TranslationItemRemoteModel> translations,
  }) = _TranslationsRemoteModel;

  factory TranslationsRemoteModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TranslationsRemoteModelFromJson(json);
}

@freezed
abstract class TranslationItemRemoteModel
    with _$TranslationItemRemoteModel {
  const factory TranslationItemRemoteModel({
    required String identifier,
    required String name,
    required String language,

    @JsonKey(name: 'language_code')
    required String languageCode,

    required String license,
    required String url,
  }) = _TranslationItemRemoteModel;

  factory TranslationItemRemoteModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TranslationItemRemoteModelFromJson(json);
}