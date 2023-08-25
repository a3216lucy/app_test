import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
        ),
        body: const Text('details',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
    );
  }
}
