import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

class LdsWebView extends StatefulWidget {
  const LdsWebView({Key? key}) : super(key: key);

  @override
  State<LdsWebView> createState() => _LdsWebViewState();
}

class _LdsWebViewState extends State<LdsWebView> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://flutter.dev',
    );
  }
}
