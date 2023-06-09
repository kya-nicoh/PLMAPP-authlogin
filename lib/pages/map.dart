import 'package:flutter/material.dart';

class Map extends StatelessWidget {
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Map'),
      ),
      body: Center(
        child: Image.asset('lib/images/PLMMap.jpg'),
      ),
    );
  }
}
