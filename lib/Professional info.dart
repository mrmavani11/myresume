import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Professionalinfo extends StatefulWidget {
  const Professionalinfo({Key? key}) : super(key: key);

  @override
  _ProfessionalinfoState createState() => _ProfessionalinfoState();
}

class _ProfessionalinfoState extends State<Professionalinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Professional information",
          style: TextStyle(
            fontSize:20.0,
            color: const Color(0xffFDFDEB),
            fontWeight: FontWeight.w900,
          ),),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            alignment: Alignment.center,
            child: Text(
              "Professional Skills",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            color: Colors.black,
            child: Text("C Language , C++ , Dart , Flutter",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            child: Text(
              "Languages Known",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(10, 50, 10, 0),
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            color: Colors.black,
            child: Text("English , Hindi , Gujarati",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          )
        ],
      ),
    );
  }
}
