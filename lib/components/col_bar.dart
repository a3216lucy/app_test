import 'package:app_test/widgets/large_button.dart';
import 'package:flutter/material.dart';

/// 直條按鈕（三個一組）
class ColBar extends StatelessWidget {
  const ColBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LargeButton(
            url: 'assets/images/Spotify.png', text: 'Spotify', price: 5.99),
        SizedBox(
          height: 10,
        ),
        LargeButton(
            url: 'assets/images/YouTube.png', text: 'YouTube', price: 18.99),
        SizedBox(
          height: 10,
        ),
        LargeButton(
            url: 'assets/images/OneDrive.png', text: 'OneDrive', price: 29.99),
      ],
    );
  }
}
