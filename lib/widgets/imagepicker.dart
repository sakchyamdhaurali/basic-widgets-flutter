import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerWidget extends StatefulWidget {
  const ImagepickerWidget({Key? key}) : super(key: key);

  @override
  _ImagepickerState createState() => _ImagepickerState();
}

class _ImagepickerState extends State<ImagepickerWidget> {
  XFile? file;
  ImagePicker _picker = ImagePicker();
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImagePicker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.grey,
            child: Center(
                child: file == null
                    ? Text("Image not Picked")
                    : Image.file(
                        File(file!.path),
                        fit: BoxFit.cover,
                      )),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                  print(photo!.path);
                });
              },
              child: Text("Pick Image")),
          ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });

                print("Images Picked");
                for (int i = 0; i < files!.length; i++) {
                  print(files![i].path);
                }
              },
              child: Text("Pick Multi Images"))
        ],
      ),
    );
  }
}
