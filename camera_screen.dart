import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'edit_screen.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  final ImagePicker _picker = ImagePicker();

  Future<void> _takePicture() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditScreen(imagePath: photo.path),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kamera')),
      body: Center(
        child: ElevatedButton(
          onPressed: _takePicture,
          child: Text('Fotoğraf Çek'),
        ),
      ),
    );
  }
}
