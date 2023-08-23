import 'package:app_test/widgets/button.dart';
import 'package:flutter/material.dart';

/// 橫條按鈕（三個一組）
class RowBar extends StatelessWidget {
  const RowBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Button(
          text: 'Active subs',
          price: 12,
        ),
        SizedBox(
          width: 10,
        ),
        Button(
          text: 'Highest Subs',
          price: 19.99,
        ),
        SizedBox(
          width: 10,
        ),
        Button(
          text: 'Lowest Subs',
          price: 5.99,
        ),
      ],
    );
  }
}
