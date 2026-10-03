import 'package:characters/characters.dart';

class NameUtils {
  static const _ignoredWords = {
    'in',
    'the',
    'of',
    'and',
    'for',
    'a',
    'an',
  };

  static final _whitespace = RegExp(r'\s+');
  static final _nonLetters = RegExp(r'[^A-Za-zÀ-ÖØ-öø-ÿ]');
  static final _digitsOnly = RegExp(r'^\d+$');
  static final Map<String, String> _shortNameCache = {};

  static String getShortName(String fullName) {
    final cached = _shortNameCache[fullName];
    if (cached != null) {
      return cached;
    }

    final shortName = _computeShortName(fullName);
    _shortNameCache[fullName] = shortName;
    return shortName;
  }

  static String _computeShortName(String fullName) {
    final words = fullName
        .trim()
        .split(_whitespace)
        .where((word) {
          final cleanedWord = word.replaceAll(_nonLetters, '');

          if (cleanedWord.isEmpty) {
            return false;
          }

          if (_ignoredWords.contains(cleanedWord.toLowerCase())) {
            return false;
          }

          // Ignore words containing only numbers
          if (_digitsOnly.hasMatch(word)) {
            return false;
          }

          return true;
        })
        .toList();

    return words
        .take(3)
        .map((word) => word.characters.first.toUpperCase())
        .join();
  }
}