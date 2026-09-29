import 'package:bible_app/app/router/app_deeplink.dart';
import 'package:bible_app/presentation/home/home_screen.dart';
import 'package:bible_app/presentation/splash/cubit/splash_cubit.dart';
import 'package:bible_app/presentation/splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  const AppRoute._();

  static final GoRoute splash = GoRoute(
    path: AppDeeplink.splash,
    builder: (context, state) {
      return BlocProvider(
        create: (context) {
          SplashCubit cubit = SplashCubit();
          cubit.startSplash();
          return cubit;
        },
        child: const SplashScreen(),
      );
    },
  );

  static final GoRoute home = GoRoute(
    path: AppDeeplink.home,
    builder: (context, state) {
      return const HomeScreen();
    },
  );
}
