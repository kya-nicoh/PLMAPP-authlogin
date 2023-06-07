import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('PLM Health Declaration'),
            centerTitle: true,
          ),
          body: const WebView(
            initialUrl: 'https://web4.plm.edu.ph/StudentHealthDeclaration/',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ));
  }
}
