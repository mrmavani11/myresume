import 'package:flutter/material.dart';

class Contectinfo extends StatefulWidget {
  const Contectinfo({Key? key}) : super(key: key);

  @override
  _ContectinfoState createState() => _ContectinfoState();
}

class _ContectinfoState extends State<Contectinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contect Information",
          style: TextStyle(
            fontSize:20.0,
            color: const Color(0xffFDFDEB),
            fontWeight: FontWeight.w900,
          ),),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 5,
                color: Colors.black38
              ),
              borderRadius: BorderRadius.circular(10),
              color:  Colors.white,
            ),
            child: Text("Address : \n\n 118, Laxmannagar  Society,\n opposite Kapodra Police Station,\n Punagam, Surat-395010",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 5,
                  color: Colors.black38
              ),
              borderRadius: BorderRadius.circular(10),
              color:  Colors.white,
            ),
            child: Text("Email : \n\n mavanisatish0101gmail.com",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 5,
                  color: Colors.black38
              ),
              borderRadius: BorderRadius.circular(10),
              color:  Colors.white,
            ),
            child: Text("Phone : \n\n +91 8488884134 ",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),
        ],
      ),
    );
  }
}
