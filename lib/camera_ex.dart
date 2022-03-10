import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';


class CameraExample extends StatefulWidget {
  const CameraExample({Key? key}) : super(key: key);

  @override
  _CameraExampleState createState() => _CameraExampleState();
}

class _CameraExampleState extends State<CameraExample> {
  File? _image;
  final picker = ImagePicker();

  // 비동기 처리를 통해 카메라와 갤러리에서 이미지를 가져온다.
  Future getImage(ImageSource imageSource) async {
    final image = await picker.pickImage(source: imageSource);

    setState(() {
      _image = File(image!.path); // 가져온 이미지를 _image에 저장
    });
  }

  // 이미지를 보여주는 위젯
  // Widget showImage() {
  //   return Container(
  //       color: const Color(0xffd0cece),
  //       //decoration: ,
  //       width: MediaQuery.of(context).size.width,
  //       height: MediaQuery.of(context).size.width,
  //       child: Center(
  //           child: _image == null
  //               ? TextButton(
  //             child: Icon(Icons.add, size: 70, color: Colors.black),
  //             onPressed: () {
  //               getImage(ImageSource.camera);
  //             },
  //           )
  //               : Image.file(File(_image!.path))));
  // }

  @override
  Widget build(BuildContext context) {
    // 화면 세로 고정
    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
        backgroundColor: const Color(0xfff4f3f9),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  color: Colors.red,
                  width: 180,
                  height: 180,
                  child: TextButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 100,
                    ),
                    onPressed: () {
                      getImage(ImageSource.camera);
                    },
                  ),
                ),
                Container(
                  color: Colors.green,
                  width: 180,
                  height: 180,
                  child: TextButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 100,
                    ),
                    onPressed: () {
                      getImage(ImageSource.camera);
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  width: 180,
                  height: 180,
                  child: TextButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 100,
                    ),
                    onPressed: () {
                      getImage(ImageSource.camera);
                    },
                  ),
                ),
                Container(
                  color: Colors.green,
                  width: 180,
                  height: 180,
                  child: TextButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 100,
                    ),
                    onPressed: () {
                      getImage(ImageSource.camera);
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
