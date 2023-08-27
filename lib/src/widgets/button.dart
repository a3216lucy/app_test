import 'package:flutter/material.dart';

/// 小按鈕
class Button extends StatefulWidget {
  const Button({Key? key, required this.text, required this.song})
      : super(key: key);
  final String text;
  final String song;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: TextButton.styleFrom(
            side: const BorderSide(width: 0.1, color: Colors.white),
            backgroundColor: Color.fromRGBO(78, 78, 97, 0.2),
            padding: EdgeInsets.zero,
            fixedSize: const Size(104, 68),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              softWrap: true,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              widget.song,
              softWrap: true,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
