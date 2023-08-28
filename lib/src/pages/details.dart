import 'package:flutter/material.dart';

/// 詳細頁
class Details extends StatefulWidget {
  const Details({
    Key? key,
    this.index,
  }) : super(key: key);
  final int? index;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
        ),
        body: Text(widget.index.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
    );
  }
}
