import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticalNews extends StatefulWidget {
  const ArticalNews({Key? key, required this.newsUrl}) : super(key: key);
  final String newsUrl;
  @override
  _ArticalNewsState createState() => _ArticalNewsState();
}

class _ArticalNewsState extends State<ArticalNews> {
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();
  late bool _isLoadingPage;
  
  @override
  void initState() {
    super.initState();
    _isLoadingPage = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  centerTitle: true,
  title: const Text('News'),
  backgroundColor: Colors.green,
),
      body: Stack(
        children: [
          WebView(
            initialUrl: widget.newsUrl,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController controller) {
              _completer.complete(controller);
            },
            onPageFinished: (String finish) =>
                setState(() => _isLoadingPage = false),
          ),
          if (_isLoadingPage)
            Container(
              alignment: FractionalOffset.center,
              child: const CircularProgressIndicator(
                backgroundColor: Colors.yellow,
              ),
            )
          else
            SizedBox.shrink()
        ],
      ),
    );
  }
}
