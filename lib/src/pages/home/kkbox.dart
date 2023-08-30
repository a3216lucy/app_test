import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// 導轉到 KKBOX 頁面
class KkboxPage extends StatefulWidget {
  KkboxPage({Key? key, required this.url}) : super(key: key);
  String url;

  @override
  _KkboxPageState createState() => _KkboxPageState();
}

class _KkboxPageState extends State<KkboxPage> {
  InAppWebViewController? webView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KKBOX Page'),
      ),
      body: InAppWebView(
        // 加載的網頁 URL
        initialUrlRequest: URLRequest(url: Uri.parse(widget.url)),
        onWebViewCreated: (controller) {
          webView = controller;
        },
      ),
    );
  }
}
