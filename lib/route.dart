import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screen/show_list_screen/show_list_screen.dart';

class AppRoute {
  static const String root = '/';

  static final _rootNavigationKey = GlobalKey<NavigatorState>();
  static final _shellNavigationKey = GlobalKey<NavigatorState>();

  static final _router = GoRouter(
    initialLocation: root,
    navigatorKey: _rootNavigationKey,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigationKey,
        pageBuilder: (context, state, child) => NoTransitionPage(
          child: Container(
            child: child,
          ),
        ),
        routes: [
          GoRoute(
            path: root,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ShowListScreen(),
            ),
          ),
        ],
      ),
    ],
  );

  static GoRouter get router => _router;
}
