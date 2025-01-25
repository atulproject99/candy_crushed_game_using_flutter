import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../common/keys/key.dart';

import 'transition/page_transition.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      navigatorKey: AppKeys.navigatorKey,
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: [],
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
