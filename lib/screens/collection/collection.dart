import 'package:flutter/material.dart';
import 'package:nasa_space_apps_unilux/screens/collection/constellation.dart';
import 'package:nasa_space_apps_unilux/widgets/orion.dart';

class Collection extends StatefulWidget {
  const Collection({Key? key}) : super(key: key);

  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  var visibilidade = [true, false, false, false];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Color(0xff3E2B4D),
      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity! < 0) {
            setState(() {
              switch (index) {
                case 0:
                  visibilidade = [false, true, false, false];
                  index = 1;
                  break;
                case 1:
                  visibilidade = [false, false, true, false];
                  index = 2;
                  break;
                case 2:
                  visibilidade = [false, false, false, true];
                  index = 3;
                  break;
                case 3:
                  visibilidade = [true, false, false, false];
                  index = 0;
                  break;
              }
            });
          }
          if (details.primaryVelocity! > 0) {
            setState(() {
              switch (index) {
                case 0:
                  visibilidade = [false, false, false, true];
                  index = 3;
                  break;
                case 3:
                  visibilidade = [false, false, true, false];
                  index = 2;
                  break;
                case 2:
                  visibilidade = [false, true, false, false];
                  index = 1;
                  break;
                case 1:
                  visibilidade = [true, false, false, false];
                  index = 0;
                  break;
              }
            });
          }
        },
        child: Stack(
          children: [
            Positioned(
              child: Visibility(
                  visible: visibilidade[0],
                  child: Center(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>Constellation()));
                          },
                          child: Orion(
                              "Orion",
                              "Orion is a prominent constellation\nlocated on the celestial equator",
                              "assets/images/orion.jpg")))),
            ),
            Positioned(
              child: Visibility(
                  visible: visibilidade[1],
                  child: Center(
                      child: Orion(
                          "Undiscovered", "Search the sky for\nthis constellation!", "assets/images/question.jpg"))),
            ),
            Positioned(
              child: Visibility(
                  visible: visibilidade[2],
                  child: Center(
                      child: Orion(
                          "Undiscovered", "Search the sky for\nthis constellation!", "assets/images/question.jpg"))),
            ),
            Positioned(
              child: Visibility(
                  visible: visibilidade[3],
                  child: Center(
                      child:
                          Orion("Undiscovered", "Search the sky for\nthis constellation!", "assets/images/question.jpg"))),
            ),
            Positioned(
              bottom: 50,child: Container(
              width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: visibilidade[0]? Colors.white : Color(0xff68717d),
                        shape: BoxShape.circle
                    ),
            ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: visibilidade[1]? Colors.white : Color(0xff68717d),
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: visibilidade[2]? Colors.white : Color(0xff68717d),
                          shape: BoxShape.circle
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: visibilidade[3]? Colors.white : Color(0xff68717d),
                          shape: BoxShape.circle
                      ),
                    ),
                  ],
                ),
              ),)
          ],
        ),
      ),
    );
  }
}
