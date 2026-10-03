import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:bible_app/presentation/home/widgets/filter/launage_filter_bottom_raido_button.dart';
import 'package:flutter/material.dart';

class LanguageFilterLanguageOptions extends StatelessWidget {
  const LanguageFilterLanguageOptions({
    super.key,
    required this.selectedFilter,
    required this.onChanged,
  });

  final LanguageFilter selectedFilter;
  final ValueChanged<LanguageFilter> onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioGroup<LanguageFilter>(
      groupValue: selectedFilter,
      onChanged: (LanguageFilter? value) {
        if (value == null) {
          return;
        }
        onChanged(value);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final filter in LanguageFilter.values)
            LanguageFilterBottomRadioButton(
              filter: filter,
              selectedFilter: selectedFilter,
              onSelected: (value) {
                onChanged(value);
              },
            ),
        ],
      ),
    );
  }
}
