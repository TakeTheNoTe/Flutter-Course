import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cross_file/src/types/html.dart';
import 'dart:async';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  XFile? image;
  final ImagePicker picker = ImagePicker();

  Future getImage() async {
    var image = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      this.image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo image_picker'),
      ),
      body: Center(
        child: image == null
            ? Text('Tidak ada gambar')
            : Image.file(File(image!.path)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Ambil Foto',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
