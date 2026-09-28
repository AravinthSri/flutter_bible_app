import 'package:bible_app/app/router/app_deeplink.dart';
import 'package:bible_app/core/theme/splash/color/splash_color_ext.dart';
import 'package:bible_app/features/splash/cubit/splash_cubit.dart';
import 'package:bible_app/features/splash/cubit/splash_state.dart';
import 'package:bible_app/features/splash/widgets/bible_book_icon.dart';
import 'package:bible_app/features/splash/widgets/bible_subtitle.dart';
import 'package:bible_app/features/splash/widgets/bible_title.dart';
import 'package:bible_app/features/splash/widgets/circular_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final splashColors = Theme.of(context).extension<SplashColorExt>()!;
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is SplashCompleted) {
          context.go(AppDeeplink.home);
        }
      },
      child: Scaffold(
        body: Container(
          color: splashColors.background,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const BibleBookIcon(),
              const BibleTitle(),
              const BibleSubTitle(),
              const CircularProgress(),
            ],
          ),
        ),
      ),
    );
  }
}
