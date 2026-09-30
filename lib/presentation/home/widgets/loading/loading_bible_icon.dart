import 'package:bible_app/core/theme/home/color/home/home_color_ext.dart';
import 'package:flutter/material.dart';

class LoadingBibleIcon extends StatelessWidget {
  const LoadingBibleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.extension<HomeColorExt>()!;
    return Center(
      child: SizedBox(
        width: 190,
        height: 190,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Outer circle
            Container(
              width: 180,
              height: 180,
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                color: color.circle1,
              ),
            ),

            // Middle circle
            Container(
              width: 145,
              height: 145,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.circle2,
              ),
            ),

            // Book
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.circle3,
              ),
              child: Icon(
                Icons.menu_book_rounded,
                size: 58,
                color: color.icon,
              ),
            ),

            // Loading arc
            Positioned.fill(
              child: CircularProgressIndicator(
                strokeWidth: 7,
                backgroundColor: color.progress,
                valueColor: AlwaysStoppedAnimation(color.loading),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
