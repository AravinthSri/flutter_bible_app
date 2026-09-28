import 'package:bible_app/app/router/app_deeplink.dart';
import 'package:bible_app/app/router/app_route.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppDeeplink.splash,
  routes: [AppRoute.splash, AppRoute.home],
);
