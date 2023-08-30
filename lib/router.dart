import 'package:app_test/src/pages/calendar.dart';
import 'package:app_test/src/pages/home.dart';
import 'package:app_test/src/pages/home/details.dart';
import 'package:app_test/src/pages/home/kkbox.dart';
import 'package:app_test/src/pages/home/register.dart';
import 'package:app_test/src/pages/login.dart';
import 'package:app_test/src/pages/setting.dart';
import 'package:app_test/src/widgets/scaffold_with_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class FamilyUrl {
  String url = '';

  FamilyUrl({required this.url});
}

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
                    path: 'register',
                    builder: (context, state) => const RegisterPage(),
                  ),
                  // child route
                  GoRoute(
                    path: 'kkboxPage',
                    builder: (context, state) =>
                        KkboxPage(url: (state.extra as FamilyUrl).url),
                  ),
                  // child route
                  GoRoute(
                      path: ':index',
                      builder: (context, state) {
                        final index =
                            int.tryParse(state.pathParameters['index'] ?? '');
                        return Details(index: index);
                      }),
                ]),
            // second nav
            GoRoute(
              path: '/calendar',
              parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => const Calendar(),
            ),
            // third nav
            GoRoute(
              path: '/login',
              parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => const Login(),
            ),
            // the last nav
            GoRoute(
              path: '/setting',
              parentNavigatorKey: _shellNavigatorKey,
              builder: (context, state) => const Setting(),
            ),
          ])
    ]);
