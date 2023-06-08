import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HealthDeclaration extends StatelessWidget {
  const HealthDeclaration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PLM Health Declaration'),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://web4.plm.edu.ph/StudentHealthDeclaration/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
