import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:bible_app/presentation/home/widgets/filter/launage_filter_bottom_raido_button.dart';

import 'package:flutter/material.dart';

class LanguageFilterBottomSheet extends StatefulWidget {
  const LanguageFilterBottomSheet({
    super.key,
    required this.initialFilter,
  });

  final LanguageFilter initialFilter;

  @override
  State<LanguageFilterBottomSheet> createState() =>
      _LanguageFilterBottomSheetState();
}

class _LanguageFilterBottomSheetState
    extends State<LanguageFilterBottomSheet> {
  late LanguageFilter _selectedFilter;

  @override
  void initState() {
    super.initState();
    _selectedFilter = widget.initialFilter;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: screenHeight * 0.85,
      ),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF0D1724),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(28),
          ),
        ),
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              20,
              20,
              20,
              16,
            ),
            child: _buildContent(),
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),

          const SizedBox(height: 16),

          _buildLanguageOptions(),

          const SizedBox(height: 20),

          _buildActions(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Filter by Language',
      style: TextStyle(
        color: Color(0xFFF5F7FB),
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildLanguageOptions() {
    return RadioGroup<LanguageFilter>(
      groupValue: _selectedFilter,
      onChanged: (LanguageFilter? value) {
        if (value == null) {
          return;
        }

        setState(() {
          _selectedFilter = value;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final filter in LanguageFilter.values)
            LanguageFilterBottomRadioButton(
              filter: filter,
              onSelected: (value) {
                setState(() {
                  _selectedFilter = value;
                });
              },
            ),
        ],
      ),
    );
  }

  Widget _buildActions() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(52),
              side: const BorderSide(
                color: Color(0xFF1683FF),
                width: 1.5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Color(0xFF42A5FF),
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
              Navigator.pop(
                context,
                _selectedFilter,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1683FF),
              foregroundColor: Colors.white,
              minimumSize: const Size.fromHeight(52),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: const Text(
              'Apply',
              style: TextStyle(
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