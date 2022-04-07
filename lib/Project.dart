import 'package:flutter/material.dart';
import 'package:myresume/Foodmenu.dart';
import 'package:myresume/Puzzle.dart';
import 'package:myresume/Shayone.dart';
import 'package:myresume/Tictactoe.dart';
import 'package:myresume/home.dart';
import 'package:myresume/screen/splash.dart';
import 'package:share/share.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project",style: TextStyle(
          fontSize:20.0,
          color: Color(0xffFDFDEB),
          fontWeight: FontWeight.w900,
        ),),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const First();
              },));
            },
            child: Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: const Text(
                "Shayari App",
                style: TextStyle(
                  color:  Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      blurRadius: 8.0,
                      color: Colors.black54,
                      // offset: Offset(.0, .0),
                    ),
                  ],
                ),

              ),
              margin: const EdgeInsets.all(20),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Demo();
              },));
            },
            child: Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: const Text(
                "Tic Tac Toe",
                style: TextStyle(
                  color:  Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      blurRadius: 8.0,
                      color: Colors.black54,
                      // offset: Offset(.0, .0),
                    ),
                  ],
                ),
              ),


              margin: const EdgeInsets.all(20),
            ),
          ),
          InkWell(
            onTap: (){
              Share.share(
                  "file:///D:/iPortfolio/iPortfolio/index.html#Contact");
            },
            child: Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: const Text(
                "PortFolio",
                style: TextStyle(
                  color:  Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      blurRadius: 8.0,
                      color: Colors.black54,
                      // offset: Offset(.0, .0),
                    ),
                  ],
                ),
              ),


              margin: const EdgeInsets.all(20),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Puzzle();
              },));
            },
            child: Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: const Text(
                "Puzzle",
                style: TextStyle(
                  color:  Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      blurRadius: 8.0,
                      color: Colors.black54,
                      // offset: Offset(.0, .0),
                    ),
                  ],
                ),
              ),
              margin: const EdgeInsets.all(20),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Menu1();
              },));
            },
            child: Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: const Text(
                "Menu",
                style: TextStyle(
                  color:  Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      blurRadius: 8.0,
                      color: Colors.black54,
                      // offset: Offset(.0, .0),
                    ),
                  ],
                ),
              ),

              margin: const EdgeInsets.all(20),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SplashScreen3Sub();
              },));
            },
            child: Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: const Text(
                "Shayari App",
                style: TextStyle(
                  color:  Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      blurRadius: 8.0,
                      color: Colors.black54,
                      // offset: Offset(.0, .0),
                    ),
                  ],
                ),
              ),
              margin: const EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }
}
