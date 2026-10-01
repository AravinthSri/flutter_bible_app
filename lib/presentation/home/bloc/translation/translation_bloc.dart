import 'package:bible_app/core/network/network_exception.dart';
import 'package:bible_app/domain/usecases/get_translation_usecase.dart';
import 'package:bible_app/presentation/home/bloc/translation/translation_event.dart';
import 'package:bible_app/presentation/home/bloc/translation/translation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranslationBloc extends Bloc<TranslationEvent, TranslationState> {
  final GetTranslationUsecase getTranslationUseCase;

  TranslationBloc({required this.getTranslationUseCase})
    : super(const TranslationInitial()) {
    on<GetTranslations>(_onGetTranslations);
  }

  Future<void> _onGetTranslations(
    GetTranslations event,
    Emitter<TranslationState> emit,
  ) async {
    emit(const TranslationLoading());

    try {
      final translations = await getTranslationUseCase();
      emit(TranslationLoaded(translations: translations));
    } on NetworkException catch (e) {
      emit(TranslationError(message: e.message));
    }
  }
}
