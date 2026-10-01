import 'package:bible_app/core/theme/home/color/home/home_filter_color_ext.dart';
import 'package:bible_app/presentation/home/cubit/filter/filter_cubit.dart';
import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:bible_app/presentation/home/widgets/filter/language_filter_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context)!;
    final color = theme.extension<HomeFilterColorExt>()!;
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: color.filterIconBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: IconButton(
          icon: Icon(Icons.filter_list, color: color.filterIconColor),
          onPressed: () async {
            final result =
                await showModalBottomSheet<LanguageFilter>(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (_) {
                return LanguageFilterBottomSheet(
                  initialFilter: context
                      .read<FilterCubit>()
                      .state
                      .selectedLanguage,
                );
              },
            );

            if (result != null && context.mounted) {
              context.read<FilterCubit>().selectLanguage(result);
            }
          },
        ),
      ),
    );
  }
}