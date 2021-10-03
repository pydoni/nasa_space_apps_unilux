import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),backgroundColor: Color(0xff8a56ac),),
      backgroundColor: Color(0xfff1f0f2),
      body: Stack(
        children: [

          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 110, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.95,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color(0xff5d4570)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 50, 20),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/orion.jpg"),
                                      fit: BoxFit.fitWidth,
                                    )),
                                child: null,
                              ),
                              Text(
                                "User X said:\n",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
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
                          color: Color(0xffffffff)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 30, 20),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    image: DecorationImage(
                                      image:
                                      AssetImage("assets/images/aquarius.jpg"),
                                      fit: BoxFit.fitWidth,
                                    )),
                                child: null,
                              ),
                              Text(
                                "User Y shared a photo:\n",
                                style:
                                TextStyle(color: Color(0xff757575), fontSize: 14),
                              ),
                            ],
                          ),
                          Container(height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width*0.7,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight:Radius.circular(50),bottomLeft: Radius.circular(50)),
                                image: DecorationImage(

                                  image: AssetImage("assets/images/orion.jpg"),
                                  fit: BoxFit.fill,
                                )),child: null,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "795",
                                style: TextStyle(color: Color(0xff757575)),
                              ),
                              Icon(
                                Icons.add_comment_outlined,
                                color: Color(0xff757575),
                              ),
                              Text("   931 ",
                                  style: TextStyle(color: Color(0xff757575))),
                              Icon(
                                Icons.volunteer_activism,
                                color: Color(0xff757575),
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
                          color: Color(0xff5d4570)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 50, 20),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    image: DecorationImage(
                                      image:
                                      AssetImage("assets/images/virgo.jpg"),
                                      fit: BoxFit.fitWidth,
                                    )),
                                child: null,
                              ),
                              Text(
                                "User X said:\n",
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
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
                                "120",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.add_comment_outlined,
                                color: Colors.white,
                              ),
                              Text("   211 ",
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
          ),
          Positioned(
            top:0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.1,
                    left: MediaQuery.of(context).size.width * 0.1,
                    child: Text(
                      "Timeline",
                      style: TextStyle(fontSize: 36, color: Color(0xff000000)),
                    ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height * 0.1,
                      right: MediaQuery.of(context).size.width * 0.1,
                      child: Icon(
                        Icons.assessment_outlined,
                        size: 40,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
