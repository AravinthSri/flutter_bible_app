// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Bible App';

  @override
  String get subTitle => 'Read. Explore. Grow.';

  @override
  String get homeScreenTitle => 'Bible Translations';

  @override
  String get homeLoadingContent => 'Loading translations...';

  @override
  String get homeLoadingDescription =>
      'Please wait while we fetch available translations';

  @override
  String get homeFilterAll => 'All';

  @override
  String get homeFilterAllLanguages => 'All Languages';

  @override
  String get homeFilterEnglish => 'English';

  @override
  String get homeFilterChinese => 'Chinese';

  @override
  String get homeFilterCzech => 'Czech';

  @override
  String get homeFilterLatin => 'Latin';

  @override
  String get homeFilterPortuguese => 'Portuguese';
}
