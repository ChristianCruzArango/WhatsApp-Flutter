import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Camara extends StatefulWidget{

  List<CameraDescription> cameras;

  Camara(this.cameras);

  @override
  CamaraState createState() {
    return new CamaraState();
  }
}

class CamaraState extends State<Camara> {
  CameraController controller;
  @override
  void initState(){
    super.initState();
    controller = new CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_){
      if (!mounted){
        return;
      }
      setState(() {

      });
    });
  }

  @override
  void dispose(){
    controller?.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    if (!controller.value.isInitialized) {
      return new Container();
    }
    return new AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: new CameraPreview(controller),
    );
  }
}