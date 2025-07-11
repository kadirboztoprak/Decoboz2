import 'package:flutter/material.dart';
import 'camera_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> sampleImages = [
    'assets/sample1.jpg',
    'assets/sample2.jpg',
    'assets/sample3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Decoboz')),
      body: Column(
        children: [
          SizedBox(height: 200, child: _buildSampleImages()),
          SizedBox(height: 20),
          ElevatedButton.icon(
            icon: Icon(Icons.camera_alt),
            label: Text('Fotoğraf Çek'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CameraScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSampleImages() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: sampleImages.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(sampleImages[index]),
      ),
    );
  }
}
