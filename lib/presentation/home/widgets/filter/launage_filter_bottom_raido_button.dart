import 'package:bible_app/core/theme/app_color.dart';
import 'package:bible_app/core/theme/home/color/home/home_bottom_sheet_filter_color_ext.dart';
import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:flutter/material.dart';

class LanguageFilterBottomRadioButton extends StatelessWidget {
  const LanguageFilterBottomRadioButton({
    super.key,
    required this.filter,
    required this.selectedFilter,
    required this.onSelected,
  });

  final LanguageFilter filter;
  final LanguageFilter selectedFilter;
  final ValueChanged<LanguageFilter> onSelected;

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedFilter == filter;
    final theme = Theme.of(context);
    final color = theme.extension<HomeBottomSheetColorFilterExt>()!;

    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? color.filterItemSelectedBackground
            : color.filterItemDefaultBackground,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isSelected
              ? color.filterItemSelectedBorder!
              : color.filterItemDefaultBorder!,
        ),
      ),
      child: InkWell(
        onTap: () {
          onSelected(filter);
        },
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: 56,
          child: Row(
            children: [
              const SizedBox(width: 16),

              Expanded(
                child: Text(
                  filter.label,
                  style: TextStyle(
                    color: isSelected
                        ? color.filterItemTitleSelected
                        : color.filterItemTitleDefault,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Radio<LanguageFilter>(
                value: filter,
                activeColor:  AppColor.primary,
              ),

              const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}
