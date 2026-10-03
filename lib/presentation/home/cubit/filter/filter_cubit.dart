import 'dart:async';

import 'package:bible_app/domain/entities/translations_entities.dart';
import 'package:bible_app/presentation/home/cubit/filter/filter_state.dart';
import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(const FilterState());

  final List<TranslationItemEntities> _allTranslations = [];

  Timer? _debounce;
  String _searchQuery = '';
  LanguageFilter _selectedLanguage = LanguageFilter.all;

  void setTranslations(
    List<TranslationItemEntities> translations,
  ) {
    _allTranslations
      ..clear()
      ..addAll(translations);

    _applyFilters();
  }

  void search(String query) {
    _searchQuery = query;
    _debounce?.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 300),
      _applyFilters,
    );
  }

  void selectLanguage(LanguageFilter language) {
    _selectedLanguage = language;
    _applyFilters();
  }

  void clearSearch() {
    _debounce?.cancel();
    _searchQuery = '';
    _applyFilters();
  }

  void clearFilters() {
    _debounce?.cancel();
    _searchQuery = '';
    _selectedLanguage = LanguageFilter.all;
    _applyFilters();
  }

  void _applyFilters() {
    final query = _searchQuery.trim().toLowerCase();
    final language = _selectedLanguage;

    final results = _allTranslations.where((translation) {
      final matchesSearch = _matchesSearch(
        translation,
        query,
      );

      final matchesLanguage = _matchesLanguage(
        translation,
        language,
      );

      return matchesSearch && matchesLanguage;
    }).toList();

    final translations = _sameTranslations(results, state.filteredTranslations)
        ? state.filteredTranslations
        : results;

    if (state.searchQuery == _searchQuery &&
        state.selectedLanguage == language &&
        identical(state.filteredTranslations, translations)) {
      return;
    }

    emit(
      state.copyWith(
        searchQuery: _searchQuery,
        selectedLanguage: language,
        filteredTranslations: translations,
      ),
    );
  }

  bool _sameTranslations(
    List<TranslationItemEntities> next,
    List<TranslationItemEntities> current,
  ) {
    if (next.length != current.length) {
      return false;
    }
    for (var i = 0; i < next.length; i++) {
      if (next[i].identifier != current[i].identifier) {
        return false;
      }
    }
    return true;
  }

  bool _matchesSearch(
    TranslationItemEntities translation,
    String query,
  ) {
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