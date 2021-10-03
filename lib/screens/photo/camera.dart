import 'dart:math';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:nasa_space_apps_unilux/screens/collection/constellation.dart';
import 'package:path_provider/path_provider.dart';




class CameraApp extends StatefulWidget {
  final CameraDescription camera;

  //declaração da camera como uma classe CameraDescription

  CameraApp(this.camera);

  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController _controller;
  late double scale;
  late Future<void> _initializeControllerFuture;
  List<CameraDescription> cameras = [];
  String nameScreenShot = "";
  Random rnd = new Random();

  @override
  void initState(){
    super.initState();

    _controller = CameraController(widget.camera, ResolutionPreset.medium);
    _initializeControllerFuture = _controller.initialize();


  }





  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

    // função que joga fora o controller quando o widget é utilizado
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: FutureBuilder<void>(
        //validação se a camera está inicializada
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            scale = 1 / (_controller.value.aspectRatio * MediaQuery.of(context).size.aspectRatio);
            return Transform.scale(
                scale: scale,
                alignment: Alignment.topCenter,
                child: CameraPreview(_controller));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _initializeControllerFuture;

            final image = await _controller.takePicture();

            nameScreenShot = rnd.nextInt(99999).toString();

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Constellation()));
          } catch (e) {
            print(e);
          }
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}

class Paths {
  Future<String> get localPath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }
}



