import 'package:app_test/src/constants/route_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Apps頁
class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apps'),
      ),
      body: Column(children: <Widget>[
        const Text('APPS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        OutlinedButton(
          onPressed: () {
            GoRouter.of(context).go(ScreenPaths.detailPage(index: 43));
          },
          child: const Text('Detail Page'),
        ),
      ]),
    );
  }
}
