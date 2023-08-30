import 'package:flutter/material.dart';

/// 行事曆頁
class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CALENDAR')),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: const Text('到 Detail 頁面'),
            ),
          ],
        ),
      ),
    );
  }
}
