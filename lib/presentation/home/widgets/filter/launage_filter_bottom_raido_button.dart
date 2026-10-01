import 'package:bible_app/presentation/home/type/language_filter_enum.dart';
import 'package:flutter/material.dart';

class LanguageFilterBottomRadioButton extends StatelessWidget {
  const LanguageFilterBottomRadioButton({
    super.key,
    required this.filter,
    required this.onSelected,
  });

  final LanguageFilter filter;
  final ValueChanged<LanguageFilter> onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(10),
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
                  style: const TextStyle(
                    color: Color(0xFFF5F7FB),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Radio<LanguageFilter>(
                value: filter,
                activeColor: const Color(0xFF1683FF),
              ),

              const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}