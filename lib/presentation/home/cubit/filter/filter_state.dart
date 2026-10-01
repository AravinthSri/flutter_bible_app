import 'package:bible_app/domain/entities/translations_entities.dart';
import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:equatable/equatable.dart';

class FilterState extends Equatable {
  final String searchQuery;
  final LanguageFilter selectedLanguage;
  final List<TranslationItemEntities> filteredTranslations;

  const FilterState({
    this.searchQuery = '',
    this.selectedLanguage = LanguageFilter.all,
    this.filteredTranslations = const [],
  });

  FilterState copyWith({
    String? searchQuery,
    LanguageFilter? selectedLanguage,
    List<TranslationItemEntities>? filteredTranslations,
  }) {
    return FilterState(
      searchQuery: searchQuery ?? this.searchQuery,
      selectedLanguage: selectedLanguage ?? this.selectedLanguage,
      filteredTranslations: filteredTranslations ?? this.filteredTranslations,
    );
  }

  @override
  List<Object?> get props => [
    searchQuery,
    selectedLanguage,
    filteredTranslations,
  ];
}
