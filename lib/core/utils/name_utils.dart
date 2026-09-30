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

  static String getShortName(String fullName) {
    final words = fullName
        .trim()
        .split(RegExp(r'\s+'))
        .where((word) {
          final cleanedWord = word.replaceAll(
            RegExp(r'[^A-Za-zÀ-ÖØ-öø-ÿ]'),
            '',
          );

          if (cleanedWord.isEmpty) {
            return false;
          }

          if (_ignoredWords.contains(cleanedWord.toLowerCase())) {
            return false;
          }

          // Ignore words containing only numbers
          if (RegExp(r'^\d+$').hasMatch(word)) {
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