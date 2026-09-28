import 'package:bible_app/core/theme/splash/color/splash_color_ext.dart';
import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final splashColors = Theme.of(context).extension<SplashColorExt>()!;
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 30.0),
      child: CircularProgressIndicator(color: splashColors.loading, strokeWidth: 4),
    );
  }
}
