import 'package:flutter/material.dart';

/// 小按鈕
class LargeButton extends StatefulWidget {
  const LargeButton(
      {Key? key,
      required this.text,
      required this.releaseDate,
      required this.url,
      this.onPressed})
      : super(key: key);
  final String text;
  final DateTime releaseDate;
  final String url;
  final dynamic onPressed;

  @override
  _LargeButtonState createState() => _LargeButtonState();
}

class _LargeButtonState extends State<LargeButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: TextButton.styleFrom(
            side: const BorderSide(width: 0.1, color: Colors.white),
            backgroundColor: const Color.fromRGBO(78, 78, 97, 0.2),
            padding: EdgeInsets.zero,
            fixedSize: const Size(328, 64),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))),
        onPressed: () => widget.onPressed!(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 15,
            ),
            Image.network(
              widget.url,
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 180,
              child: Text(
                widget.text,
                softWrap: true,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '${widget.releaseDate.year}-${widget.releaseDate.month}-${widget.releaseDate.day}',
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
