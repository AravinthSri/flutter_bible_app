import 'dart:async';

import 'package:bible_app/domain/entities/translations_entities.dart';
import 'package:bible_app/presentation/home/cubit/filter/filter_state.dart';
import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterCubit extends Cubit<FilterState> {
  Timer? _debounce;
  List<TranslationItemEntities> _allTranslations = [];

  FilterCubit() : super(const FilterState());

  void setTranslations(List<TranslationItemEntities> translations) {
    _allTranslations = translations;
    _applyFilters();
  }

  void search(String query) {
    emit(state.copyWith(searchQuery: query));

    _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 300), _applyFilters);
  }

  void selectLanguage(LanguageFilter language) {
    emit(state.copyWith(selectedLanguage: language));

    _applyFilters();
  }

  void clearSearch() {
    _debounce?.cancel();

    emit(state.copyWith(searchQuery: ''));

    _applyFilters();
  }

  void clearFilters() {
    emit(state.copyWith(searchQuery: '', selectedLanguage: LanguageFilter.all));

    _applyFilters();
  }

  void _applyFilters() {
    final query = state.searchQuery.trim().toLowerCase();

    final results = _allTranslations.where((translation) {
      final matchesSearch = _matchesSearch(translation, query);

      final matchesLanguage = _matchesLanguage(
        translation,
        state.selectedLanguage,
      );

      return matchesSearch && matchesLanguage;
    }).toList();

    emit(state.copyWith(filteredTranslations: results));
  }

  bool _matchesSearch(TranslationItemEntities translation, String query) {
    if (query.isEmpty) {
      return true;
    }

    return translation.name.toLowerCase().contains(query) ||
        translation.language.toLowerCase().contains(query);
  }

  bool _matchesLanguage(
    TranslationItemEntities translation,
    LanguageFilter filter,
  ) {
    if (filter == LanguageFilter.all) {
      return true;
    }

    return translation.language.toLowerCase() == filter.value;
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
