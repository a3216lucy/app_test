import 'package:app_test/router.dart';
import 'package:app_test/src/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void setUpLocator() async {
  GetIt locator = GetIt.instance;
  locator.registerSingleton<NavigationService>(NavigationService());
}

/// 初始執行
void main() {
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
