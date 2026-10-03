import 'package:bible_app/core/theme/home/color/home/home_bottom_sheet_filter_color_ext.dart';
import 'package:bible_app/l10n/app_localizations.dart';
import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:flutter/material.dart';

class LanguageFilterBottoms extends StatelessWidget {
  final LanguageFilter selectedFilter;

  const LanguageFilterBottoms({super.key, required this.selectedFilter});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.extension<HomeBottomSheetColorFilterExt>()!;
    final localizations = AppLocalizations.of(context)!;
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(52),
              backgroundColor:
                  color.buttonCancelBackground ?? Colors.transparent,
              side: BorderSide(
                color: color.buttonCancelBorder ?? Colors.transparent,
                width: 1.5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: Text(
              localizations.homeBottomCancelText,
              style: TextStyle(
                color: color.buttonCancelText ?? Colors.transparent,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context, selectedFilter);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  color.buttonApplyBackground ?? Colors.transparent,
              minimumSize: const Size.fromHeight(52),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: Text(
              localizations.homeBottomApplyText,
              style: TextStyle(
                color: color.buttonApplyText ?? Colors.transparent,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
