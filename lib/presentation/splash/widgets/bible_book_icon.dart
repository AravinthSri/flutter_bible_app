import 'package:bible_app/core/theme/splash/color/splash_color_ext.dart';
import 'package:flutter/material.dart';

class BibleBookIcon extends StatelessWidget {
  const BibleBookIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final splashColors = Theme.of(context).extension<SplashColorExt>()!;
    return Icon(Icons.menu_book, size: 160, color: splashColors.icon);
  }
}
