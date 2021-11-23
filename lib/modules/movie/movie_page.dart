import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  var photos = <File>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filme'),
      ),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () async {
              await ImagePicker().pickImage(
                  source: ImageSource.camera, maxWidth: 300, maxHeight: 300);
              // var image = await ImagePicker.pickImage(
              //     source: ImageSource.camera, maxWidth: 300, maxHeight: 300);
              debugPrint('Tirei!');
            },
            icon: const Icon(Icons.camera_alt_rounded),
            label: const Text('Tirar Foto')),
      ),
    );
  }
}
