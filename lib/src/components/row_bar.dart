import 'package:app_test/src/widgets/button.dart';
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
          text: '南西肯恩',
          song: '煙花',
        ),
        SizedBox(
          width: 10,
        ),
        Button(
          text: '胡凱兒',
          song: '菸癮',
        ),
        SizedBox(
          width: 10,
        ),
        Button(
          text: '美秀集團',
          song: '戀人',
        ),
      ],
    );
  }
}
