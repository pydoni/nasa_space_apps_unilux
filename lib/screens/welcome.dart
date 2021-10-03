import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Welcome extends StatelessWidget {
  final CameraDescription camera;

  Welcome(this.camera);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.70,
            decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(70)),
                image: DecorationImage(
                  image: AssetImage("assets/images/welcome.png"),
                  fit: BoxFit.cover,
                )),
            child: null,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Welcome", style: TextStyle(fontSize: 32,color: Colors.black)),
                Text("    You are about to become a\nmaster in catching constellations", style: TextStyle(fontSize: 14,color: Color(0xff767676))),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Menu(camera)));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.05,
                    decoration: BoxDecoration(
                        color: Color(0xff8a56ac),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                    child: Center(child: Text("Next", style: TextStyle(fontSize: 20,color: Colors.white))),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
