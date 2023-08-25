import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        child: const Text('CALENDAR',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
    );
  }
}
