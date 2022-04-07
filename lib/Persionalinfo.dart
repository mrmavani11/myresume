import 'package:flutter/material.dart';

class Persionalinfo extends StatefulWidget {
  const Persionalinfo({Key? key}) : super(key: key);

  @override
  _PersionalinfoState createState() => _PersionalinfoState();
}

class _PersionalinfoState extends State<Persionalinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Details",
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
              "Gender  :Male",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          ),Container(
            height: 40,
            alignment: Alignment.center,
            child: Text(
              "DOB  :26th Dec, 1998",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            child: Text(
              "Marital Status  :Married",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            child: Text(
              "Nationality  :Indian",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          ),

        ],
      ),
    );
  }
}
