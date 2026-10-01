import 'package:bible_app/core/theme/home/color/home/home_filter_color_ext.dart';
import 'package:bible_app/presentation/home/cubit/filter/filter_cubit.dart';
import 'package:bible_app/presentation/home/cubit/filter/filter_state.dart';
import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageFilterChips extends StatefulWidget {
  const LanguageFilterChips({super.key});

  @override
  State<LanguageFilterChips> createState() =>
      _LanguageFilterChipsState();
}

class _LanguageFilterChipsState
    extends State<LanguageFilterChips> {
  final ScrollController _scrollController = ScrollController();

  final Map<LanguageFilter, GlobalKey> _chipKeys = {
    for (final filter in LanguageFilter.values)
      filter: GlobalKey(),
  };

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSelected(LanguageFilter filter) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final key = _chipKeys[filter];

      if (key?.currentContext == null) {
        return;
      }

      Scrollable.ensureVisible(
        key!.currentContext!,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        alignment: 0.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context)!;
    final color = theme.extension<HomeFilterColorExt>()!;
    return BlocConsumer<FilterCubit, FilterState>(
      listenWhen: (previous, current) =>
          previous.selectedLanguage !=
          current.selectedLanguage,
      listener: (context, state) {
        _scrollToSelected(state.selectedLanguage);
      },
      buildWhen: (previous, current) =>
          previous.selectedLanguage !=
          current.selectedLanguage,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: SizedBox(
            height: 40,
            child: ListView.separated(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              itemCount: LanguageFilter.values.length,
              separatorBuilder: (_, _) =>
                  const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final filter = LanguageFilter.values[index];

                return KeyedSubtree(
                  key: _chipKeys[filter],
                  child: ChoiceChip(
                    checkmarkColor: color.filterChipTextSelected,
                    selectedColor: color.filterChipBackgroundSelected,
                    backgroundColor: color.filterChipBackgroundDefault,
                    label: Text(
                      _label(filter),
                      style: TextStyle(
                        color: state.selectedLanguage == filter
                            ? color.filterChipTextSelected
                            : color.filterChipTextDefault,
                      ),
                    ),
                    selected:
                        state.selectedLanguage == filter,
                    onSelected: (_) {
                      context
                          .read<FilterCubit>()
                          .selectLanguage(filter);
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  String _label(LanguageFilter filter) {
    switch (filter) {
      case LanguageFilter.all:
        return 'All';

      case LanguageFilter.english:
        return 'English';

      case LanguageFilter.chinese:
        return 'Chinese';

      case LanguageFilter.czech:
        return 'Czech';

      case LanguageFilter.latin:
        return 'Latin';

      case LanguageFilter.portuguese:
        return 'Portuguese';
    }
  }
}