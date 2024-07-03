import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:face_camera/face_camera.dart';

class Facedetect extends StatefulWidget {
  const Facedetect({super.key,required this.title });
  final String title;
  @override
  State<Facedetect> createState() => _FacedetectState();
}

class _FacedetectState extends State<Facedetect> {

  late FaceCameraController controller;

  @override
  void initState(){

    controller = FaceCameraController(
      autoCapture: true,
      defaultCameraLens: CameraLens.front,
      onCapture: (File? image) {

      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title.toUpperCase()),
        actions: [
          Container(),
        ],
      ),
      body: SafeArea(
        child: SmartFaceCamera(
          controller: controller,
          indicatorShape: IndicatorShape.circle,
          message: 'Center your face in the Circle',
        ),
      ),
    );
  }
}
