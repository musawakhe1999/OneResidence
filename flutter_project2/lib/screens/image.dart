import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class upLoad extends StatefulWidget {
  late String title;

  @override
  _upLoadState createState() => _upLoadState();
}

class _upLoadState extends State<upLoad> {
  final imagePicker = ImagePicker();

  late File imageFile = File('your initial file');

  Future getImage() async {
    var image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      if (image != null) {
        imageFile = File(image.path);
        print("image is selected");
      } else {
        print("Picture is not selected");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
      ),
      body: Center(
          child: imageFile == null
              ? Text("Image is not loaded")
              : Image.file(imageFile)),

      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Increment',
        child: Icon(Icons.camera_alt),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
