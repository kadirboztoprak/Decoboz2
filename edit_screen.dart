import 'dart:io';
import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  final String imagePath;

  EditScreen({required this.imagePath});

  final List<String> materials = [
    "Mantolama",
    "Söve Modelleri",
    "Dış Cephe Boyaları"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Düzenle")),
      body: Column(
        children: [
          Expanded(child: Image.file(File(imagePath))),
          SizedBox(height: 10),
          Text("Materyal Seçin", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: materials.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(materials[index]),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Sepete eklendi!")),
              );
            },
            child: Text("Sepete Ekle"),
          )
        ],
      ),
    );
  }
}
