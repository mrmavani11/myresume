import 'package:flutter/material.dart';
import 'package:myresume/model.dart';



class Document extends StatefulWidget {
  const Document({Key? key}) : super(key: key);

  @override
  _DocumentState createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Document",
            style: TextStyle(
              fontSize:20.0,
              color: const Color(0xffFDFDEB),
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: Colors.black,
        ),
      body: ListView(
        children: [
          Container(
            height: 35,
            alignment: Alignment.center,
            child: Text(
              "SSC",
              style: const TextStyle(
                color: Color(0xffFDFDEB),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            color:  Colors.black,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          ),
          Container(
            alignment: Alignment.center,
            height: 300,
            width: 150,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 5,
                    color: Colors.black
                ),
              image: DecorationImage(image: AssetImage("image/20220203_102213.jpg"),
                  fit: BoxFit.fill)
            ),
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          ),
          Container(
            height: 35,
            alignment: Alignment.center,
            child: Text(
              "HSC",
              style: const TextStyle(
                color: Color(0xffFDFDEB),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            color:  Colors.black,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          ),
          Container(
            height: 300,
            // width: 150,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 5,
                    color: Colors.black
                ),
                image: DecorationImage(image: AssetImage("image/20220203_102134 (1).jpg"),
                    fit: BoxFit.fill)
            ),
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          ),
          Container(
            height: 35,
            alignment: Alignment.center,
            child: Text(
              "Flutter Application Development",
              style: const TextStyle(
                color: Color(0xffFDFDEB),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            color:  Colors.black,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          ),
          Container(
            height: 150,
            // width: 150,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 5,
                    color: Colors.black
                ),
            ),
            alignment: Alignment.center,
            child: Text("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCreative\nDesign & Multimedia Institute\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t(Pending)"),
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          ),

        ],
      )

    );
  }
}
