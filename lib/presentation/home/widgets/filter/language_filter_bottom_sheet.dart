import 'package:bible_app/core/theme/home/color/home/home_bottom_sheet_filter_color_ext.dart';
import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:bible_app/presentation/home/widgets/filter/language_filter_bottom_dragger.dart';
import 'package:bible_app/presentation/home/widgets/filter/language_filter_bottom_lang_options.dart';
import 'package:bible_app/presentation/home/widgets/filter/language_filter_bottom_title.dart';
import 'package:bible_app/presentation/home/widgets/filter/language_filter_buttons.dart';

import 'package:flutter/material.dart';

class LanguageFilterBottomSheet extends StatefulWidget {
  const LanguageFilterBottomSheet({super.key, required this.initialFilter});

  final LanguageFilter initialFilter;

  @override
  State<LanguageFilterBottomSheet> createState() =>
      _LanguageFilterBottomSheetState();
}

class _LanguageFilterBottomSheetState extends State<LanguageFilterBottomSheet> {
  late LanguageFilter _selectedFilter;

  @override
  void initState() {
    super.initState();
    _selectedFilter = widget.initialFilter;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final theme = Theme.of(context)!;
    final color = theme.extension<HomeBottomSheetColorFilterExt>()!;
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: screenHeight * 0.85),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color.background,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 16),
            child: _buildContent(color),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(HomeBottomSheetColorFilterExt color) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LanguageFilterBottomDragger(),
          const SizedBox(height: 20),
          const LanguageFilterTitle(),
          const SizedBox(height: 16),
          LanguageFilterLanguageOptions(
            selectedFilter: _selectedFilter,
            onChanged: (value) {
              setState(() {
                _selectedFilter = value;
              });
            },
          ),

          
          const SizedBox(height: 20),

          LanguageFilterBottoms(selectedFilter: _selectedFilter),
        ],
      ),
    );
  }
}
