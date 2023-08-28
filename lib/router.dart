import 'package:app_test/src/pages/a.dart';
import 'package:app_test/src/pages/apps.dart';
import 'package:app_test/src/pages/calendar.dart';
import 'package:app_test/src/pages/details.dart';
import 'package:app_test/src/pages/home_page.dart';
import 'package:app_test/src/pages/setting.dart';
import 'package:app_test/src/services/navigation_service.dart';
import 'package:app_test/src/widgets/bottom_navigation_barTool.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GetIt.I<NavigationService>().navigatorKey;
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

/// 路由設定
final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/home',
    navigatorKey: rootNavigatorKey,
    routes: <RouteBase>[
      // 底部固定導航
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return const BottomNavigationBarTool();
          },
          branches: [
            // first nav
            StatefulShellBranch(
              navigatorKey: _shellNavigatorAKey,
              routes: [
                GoRoute(
                    path: '/home',
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
              ],
            ),
            // second nav
            StatefulShellBranch(
              navigatorKey: _shellNavigatorBKey,
              routes: [
                GoRoute(
                  path: '/app',
                  builder: (context, state) => const Apps(),
                ),
              ],
            ),
            // third nav
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/calendar',
                  builder: (context, state) => const Calendar(),
                ),
              ],
            ),
            // the last nav
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/setting',
                  builder: (context, state) => const Setting(),
                ),
              ],
            ),
          ])
    ]);
