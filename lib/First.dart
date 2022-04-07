import 'package:flutter/material.dart';
import 'package:myresume/Contectinfo.dart';
import 'package:myresume/Persionalinfo.dart';
import 'package:myresume/Professional%20info.dart';
import 'package:myresume/Project.dart';
import 'package:myresume/document.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                    "My Resume",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.black,
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("image/passport.JPG"))),
                    ),
                    const Padding(padding: const EdgeInsets.only(left: 30)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Satish Mavani",
                          style: TextStyle(
                            fontFamily: "f7",
                            fontSize: 25,
                          ),
                        ),
                        Text("Flutter Developer",
                          style: TextStyle(
                            fontFamily: "f7",
                          ),),
                      ],
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Document();
                    },));

                  },
                  leading: Icon(Icons.school_outlined,size: 40),
                  trailing: Text("Educational Details",
                    style: TextStyle(
                      fontFamily: "f7" ,
                      fontSize: 20,
                    ),),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Professionalinfo();
                    },));

                  },
                  leading: Icon( Icons.computer_outlined,size: 40),
                  trailing: Text("Professional Skills",
                      style: TextStyle(
                        fontFamily: "f7" ,
                        fontSize: 20,
                      ),),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Contectinfo();
                    },));

                  },
                  leading: Icon( Icons.contacts_outlined,size: 40),
                  trailing: Text("Contact Information",
                    style: TextStyle(
                      fontFamily: "f7" ,
                      fontSize: 20,
                    ),),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Persionalinfo();
                    },));

                  },
                  leading: Icon(Icons.person_outline,size: 40),
                  trailing: Text("Personal Details",
                    style: TextStyle(
                      fontFamily: "f7" ,
                      fontSize: 20,
                    ),),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Project();
                    },));
                  },
                  leading: Icon( Icons.picture_in_picture_rounded,size: 40),
                  trailing: Text("Project",
                    style: TextStyle(
                      fontFamily: "f7" ,
                      fontSize: 20,
                    ),),
                ),
                const Padding(padding: const EdgeInsets.only(top: 50)),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("About Me",style: TextStyle(
                    fontFamily: "f5" ,
                  ),),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text("Seeking a Flutter Developer Role to pursue my passion for developing a solution for real world problems with my knowledge and ability. \nQuick Learner, Confident and Hard Worker. \nKeen to learn new things as per Company's requirements.",
                    style: TextStyle(
                      fontFamily: "f7" ,
                      fontSize: 13,
                    ),),
                ),
                const Padding(padding: const EdgeInsets.only(top: 5)),
                const Text("Created By Savan Vora",style: const TextStyle(
                  fontFamily: "f9" ,
                ),)
              ],
            ),
          ),
        ],
      )
    );
  }
}
