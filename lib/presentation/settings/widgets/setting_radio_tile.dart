import 'package:bible_app/core/theme/setting/color/setting_color_ext.dart';
import 'package:flutter/material.dart';

class SettingRadioTile<T> extends StatelessWidget {
  const SettingRadioTile({
    super.key,
    required this.value,
    required this.label,
    required this.labelStyle,
    required this.onRowTap,
  });

  final T value;
  final String label;
  final TextStyle labelStyle;
  final VoidCallback onRowTap;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<SettingColorExt>()!;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onRowTap,
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 48,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    label,
                    style: labelStyle.copyWith(color: color.subTitle),
                  ),
                ),
                Radio<T>(
                  value: value,
                  activeColor: color.radioSelected,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
