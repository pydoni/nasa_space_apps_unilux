import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff241332),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/stories.jpg"),
              fit: BoxFit.fill,
            )),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.blue.withOpacity(0),
                    Color(0xff241332).withOpacity(0.9)
                  ])),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "User X",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "125",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Text(
                      "FOLLOWERS",
                      style: TextStyle(fontSize: 12, color: Color(0xfff0dede)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "125",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Text(
                      "FOLLOWING",
                      style: TextStyle(fontSize: 12, color: Color(0xfff0dede)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "125",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Text(
                      "LIKES",
                      style: TextStyle(fontSize: 12, color: Color(0xfff0dede)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color(0xff352641)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "User X said:\n",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "425 ",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.add_comment_outlined,
                              color: Colors.white,
                            ),
                            Text("   321 ",
                                style: TextStyle(color: Colors.white)),
                            Icon(
                              Icons.volunteer_activism,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color(0xff352641)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "User X said:\n",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "425 ",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.add_comment_outlined,
                              color: Colors.white,
                            ),
                            Text("   321 ",
                                style: TextStyle(color: Colors.white)),
                            Icon(
                              Icons.volunteer_activism,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
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
