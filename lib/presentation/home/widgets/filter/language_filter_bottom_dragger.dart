import 'package:bible_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class LanguageFilterBottomDragger extends StatelessWidget {
  const LanguageFilterBottomDragger({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: 8,
          width: 60,
          decoration: BoxDecoration(
            color: AppColor.grey,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ],
    );
  }
}
