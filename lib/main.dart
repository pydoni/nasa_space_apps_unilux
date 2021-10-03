import 'package:flutter/material.dart';
import 'screens/menu.dart';
import 'screens/welcome.dart';
import 'package:camera/camera.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;


  runApp(MaterialApp(
    title: 'Nasa space apps UniLux',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Welcome(firstCamera),
  ),);
}
