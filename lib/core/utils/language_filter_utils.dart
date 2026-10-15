import 'package:bible_app/l10n/app_localizations.dart';
import 'package:bible_app/presentation/home/type/language_filter_enum.dart';

class LanguageFilterUtils {
  static String getLabel(
    LanguageFilter filter,
    AppLocalizations l10n,
    bool isBottomSheet,
  ) {
    switch (filter) {
      case LanguageFilter.all:
        return isBottomSheet
            ? l10n.homeFilterAllLanguages
            : l10n.homeFilterAll;

      case LanguageFilter.english:
        return l10n.homeFilterEnglish;

      case LanguageFilter.chinese:
        return l10n.homeFilterChinese;

      case LanguageFilter.czech:
        return l10n.homeFilterCzech;

      case LanguageFilter.latin:
        return l10n.homeFilterLatin;

      case LanguageFilter.portuguese:
        return l10n.homeFilterPortuguese;
    }
  }
}
