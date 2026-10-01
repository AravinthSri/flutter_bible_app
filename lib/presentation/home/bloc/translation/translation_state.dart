import 'package:bible_app/domain/entities/translations_entities.dart';
import 'package:equatable/equatable.dart';

class TranslationState extends Equatable {
  const TranslationState();

  @override
  List<Object?> get props => [];
}

final class TranslationInitial extends TranslationState {
  const TranslationInitial();
}

final class TranslationLoading extends TranslationState {
  const TranslationLoading();
}

final class TranslationLoaded extends TranslationState {
  final List<TranslationItemEntities> translations;

  const TranslationLoaded({required this.translations});

  @override
  List<Object?> get props => [translations];
}

final class TranslationError extends TranslationState {
  final String message;

  const TranslationError({required this.message});

  @override
  List<Object?> get props => [message];
}