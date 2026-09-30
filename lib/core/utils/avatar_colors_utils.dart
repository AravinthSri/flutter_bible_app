import 'package:bible_app/core/theme/home/color/avatar/avatar_colors_ext.dart';
import 'package:flutter/material.dart';

class AvatarColorUtils {
  static Color getAvatarColor(
    BuildContext context,
    int index,
  ) {
    final extension =
        Theme.of(context).extension<AvatarColorExtension>();

    if (extension == null || extension.colors.isEmpty) {
      return Colors.grey;
    }

    return extension.colors[index % extension.colors.length];
  }
}
