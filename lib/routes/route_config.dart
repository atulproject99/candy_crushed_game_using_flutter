import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../common/keys/key.dart';

import '../modules/home/views/home_view.dart';
import '../modules/level/views/level_view.dart';
import '../modules/splash/views/splash_view.dart';
import 'transition/page_transition.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      navigatorKey: AppKeys.navigatorKey,
      initialLocation: SplashView.path,
      debugLogDiagnostics: true,
      routes: [
        CustomGoRoute(
            path: SplashView.path,
            name: SplashView.name,
            pageBuilder: (_) => const SplashView()),
        CustomGoRoute(
            path: HomeView.path,
            name: HomeView.name,
            pageBuilder: (_) => const HomeView()),
        CustomGoRoute(
            path: LevelView.path,
            name: LevelView.name,
            pageBuilder: (_) => const LevelView())
      ],
      redirect: (context, state) {
        return null;
      },
    );
  },
);

class CustomGoRoute extends GoRoute {
  CustomGoRoute({
    required super.path,
    required super.name,
    required Widget Function(GoRouterState state) pageBuilder,
    super.redirect,
    super.parentNavigatorKey,
    super.routes,
  }) : super(
          pageBuilder: (context, state) {
            return PageTransition(
              key: state.pageKey,
              child: pageBuilder(state),
            );
          },
        );
}
