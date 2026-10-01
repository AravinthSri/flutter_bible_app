enum LanguageFilter {
  all(
    value: '',
    label: 'All Languages',
  ),
  english(
    value: 'english',
    label: 'English',
  ),
  chinese(
    value: 'chinese',
    label: 'Chinese',
  ),
  czech(
    value: 'czech',
    label: 'Czech',
  ),
  latin(
    value: 'latin',
    label: 'Latin',
  ),
  portuguese(
    value: 'portuguese',
    label: 'Portuguese',
  );

  final String value;
  final String label;

  const LanguageFilter({
    required this.value,
    required this.label,
  });
}
