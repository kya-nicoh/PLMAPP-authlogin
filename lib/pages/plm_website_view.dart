import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PLM_Site extends StatelessWidget {
  const PLM_Site({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PLM Official Website'),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://plm.edu.ph/',
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
