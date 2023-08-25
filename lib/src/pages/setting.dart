import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        child: const Text('SETTING',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
    );
  }
}
