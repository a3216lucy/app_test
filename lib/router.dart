import 'package:app_test/src/pages/a.dart';
import 'package:app_test/src/pages/apps.dart';
import 'package:app_test/src/pages/calendar.dart';
import 'package:app_test/src/pages/details.dart';
import 'package:app_test/src/pages/home_page.dart';
import 'package:app_test/src/pages/setting.dart';
import 'package:app_test/src/widgets/scaffold_with_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

/// 路由設定
final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/home',
    navigatorKey: _rootNavigatorKey,
    routes: [
      // 底部固定導航
      ShellRoute(
          navigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state, child) {
            return NoTransitionPage(
                child: ScaffoldWithBottomNavigationBar(
              location: state.location,
              child: child,
            ));
          },
          routes: [
            // first nav
            GoRoute(
                path: '/home',
                parentNavigatorKey: _shellNavigatorKey,
                builder: (context, state) => const HomePage(),
                routes: [
                  // child route
                  GoRoute(
                      path: 'detail',
                      builder: (context, state) => const A(),
                      routes: [
                        // child route
                        GoRoute(
                            path: ':index',
                            builder: (context, state) {
                              final index = int.tryParse(
                                  state.pathParameters['index'] ?? '');
                              return Details(index: index);
                            }),
                      ]),
                ]),
            // second nav
            GoRoute(
              path: '/app',
              parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => const Apps(),
            ),
            // third nav
            GoRoute(
              path: '/calendar',
              parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => const Calendar(),
            ),
            // the last nav
            GoRoute(
              path: '/setting',
              parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => const Setting(),
            ),
          ])
    ]);
