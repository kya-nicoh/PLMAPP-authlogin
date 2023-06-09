import 'package:flutter/material.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  TransformationController _transformationController = TransformationController();

  void _zoomIn() {
    _transformationController.value = Matrix4.identity();
    _transformationController.value *= Matrix4.diagonal3Values(1.5, 1.5, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('University Map'),
      ),
      body: Center(
        child: InteractiveViewer(
          transformationController: _transformationController,
          boundaryMargin: EdgeInsets.all(20.0),
          minScale: 0.5,
          maxScale: 4.0,
          panEnabled: true,
          scaleEnabled: true,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset('lib/images/PLMMap.jpg'),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: FloatingActionButton(
                  onPressed: _zoomIn,
                  child: Icon(Icons.search),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
