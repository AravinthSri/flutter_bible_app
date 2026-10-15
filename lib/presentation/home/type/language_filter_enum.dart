enum LanguageFilter {
  all(value: ''),
  english(value: 'english'),
  chinese(value: 'chinese'),
  czech(value: 'czech'),
  latin(value: 'latin'),
  portuguese(value: 'portuguese');

  final String value;

  const LanguageFilter({required this.value});
}
