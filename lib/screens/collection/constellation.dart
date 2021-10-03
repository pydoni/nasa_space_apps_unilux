import 'package:flutter/material.dart';

class Constellation extends StatefulWidget {
  const Constellation({Key? key}) : super(key: key);

  @override
  _ConstellationState createState() => _ConstellationState();
}

class _ConstellationState extends State<Constellation> {


  var visibilidade=[true,false,false,false];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      topRight: Radius.circular(70)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/orion.jpg"),
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                "Constellation: Orion",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              width: MediaQuery.of(context).size.width * 0.80,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Stack(
                children: [
                  Positioned(
                    child: Visibility(
                      visible: visibilidade[0],
                      child: Text(
                          "Number of stars: 81\nMain star: Rigel (β Orionis)\nMost favorable time for observation: night sky from November to February\nLocation: celestial equator"),
                    ),
                  ),
                  Positioned(
                    child: Visibility(
                      visible: visibilidade[1],
                      child: Text(
                          "The ancient city of Teotihuacan, located in Mexico, is another wonder of ancient construction that is linked to Orion. According to theory, like the pyramids of Giza, the monuments of this city point directly to the three stars in the belt of Orion."),
                    ),
                  ),
                  Positioned(
                    child: Visibility(
                      visible: visibilidade[2],
                      child: Text(
                          "While the name Orion is steeped in Greek mythology, many cultures have been influenced by the story of this constellation. Orion is also associated with an Egyptian pharaoh of the Fifth Dynasty named Unas. In Hungary, Orion is known as (magic) Archer (Íjász), or Scyther (Kaszás). Scandinavians refer to Orion's Belt as Frigg's Distaff."),
                    ),
                  ),
                  Positioned(
                    child: Visibility(
                      visible: visibilidade[3],
                      child: Text(
                          "Science fiction author Ben Bova re-invented Orion as a time-traveling servant of various gods in a series of five novels. In The Blood of Olympus, the final volume of a series, Rick Riordan depicts Orion as one of the giant sons of the earth goddess Gaea."),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
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
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff8a56ac),
                        borderRadius: BorderRadius.all(
                          Radius.circular(70),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
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
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff8a56ac),
                        borderRadius: BorderRadius.all(
                          Radius.circular(70),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
