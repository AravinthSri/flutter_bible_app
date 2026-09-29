import 'package:equatable/equatable.dart';

sealed class TranslationEvent extends Equatable {
  const TranslationEvent();

  @override
  List<Object?> get props => [];
}

final class GetTranslations extends TranslationEvent {
  const GetTranslations();
}