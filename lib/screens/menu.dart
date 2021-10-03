import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:nasa_space_apps_unilux/screens/collection/collection.dart';
import 'package:nasa_space_apps_unilux/screens/collection/constellation.dart';
import 'package:nasa_space_apps_unilux/screens/photo/camera.dart';
import 'package:nasa_space_apps_unilux/screens/profile.dart';
import 'package:nasa_space_apps_unilux/screens/stories/timeline.dart';

import 'welcome.dart';

class Menu extends StatelessWidget {
  final CameraDescription camera;


  Menu(this.camera);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.71,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/perfil.jpg"),
                  fit: BoxFit.cover,
                )),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 50,
                      left: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Profile",
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          ),
                          Text("Edit your profile!",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.51,
            child: GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Collection()));},
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(70)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/collection.jpg"),
                      fit: BoxFit.cover,
                    )),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 50,
                      left: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Collections",
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          ),
                          Text("Gotta see them all!",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.31,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Timeline()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(70)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/stories.jpg"),
                      fit: BoxFit.cover,
                    )),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 50,
                      left: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Stories",
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          ),
                          Text("Share with friends!",
                              style:
                              TextStyle(fontSize: 12, color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.11,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>CameraApp(camera)));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(70)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/camera.jpg"),
                      fit: BoxFit.cover,
                    )),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 50,
                      left: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Camera",
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          ),
                          Text("Let's go find stars!",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Color(0xff8a56ac),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(70)),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image(image: AssetImage('assets/images/logo.png')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
