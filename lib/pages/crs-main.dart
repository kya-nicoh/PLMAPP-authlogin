import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PLM_crs extends StatelessWidget {
  const PLM_crs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PLM CRS undergrad'),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://web1.plm.edu.ph/crs/',
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
