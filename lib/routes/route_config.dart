import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../common/keys/key.dart';

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
            pageBuilder: (_) => const SplashView())
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
