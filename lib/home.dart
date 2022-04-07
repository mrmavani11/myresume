import 'package:flutter/material.dart';
import 'package:myresume/f1.dart';
import 'package:myresume/f2.dart';
import 'package:myresume/f3.dart';
import 'package:myresume/f4.dart';
import 'package:myresume/f5.dart';
import 'package:myresume/f6.dart';

class F1 extends StatefulWidget {
  const F1({Key? key}) : super(key: key);

  @override
  _F1State createState() => _F1State();
}

class _F1State extends State<F1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF9CE00),
          title: const Text("Animated Text kit"),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  // height: 100,
                  // width: 100,
                  color: const Color(0xffF9CE00),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const f1();
                      },));
                    },
                    child: Container(
                      margin:
                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: const Center(
                        child: Text(
                          "Rotate Animated Text",
                          style: TextStyle(
                              fontFamily: 'f18',
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 2,
              ),
              Expanded(
                child: Container(
                  color: const Color(0xff08ffc8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const f2();
                      },));
                    },
                    child: Container(
                      margin:
                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: const Center(
                        child: Text(
                          "Typer Animated Text",
                          style: TextStyle(
                              fontFamily: 'f19',
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 2,
              ),
              Expanded(
                child: Container(
                  // height: 100,
                  // width: 100,
                  color: const Color(0xffdadada),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const f3();
                      },));
                    },
                    child: Container(
                      margin:
                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: const Center(
                        child: Text(
                          "Fade Animated Text",
                          style: TextStyle(
                              fontFamily: 'f20',
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 2,
              ),
              Expanded(
                child: Container(
                  // height: 100,
                  // width: 100,
                  color: const Color(0xff204969),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const f4();
                      },));
                    },
                    child: Container(
                      margin:
                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: const Center(
                        child: Text(
                          "Scale Animated Text",
                          style: TextStyle(
                              fontFamily: 'f21',
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 2,
              ),
              Expanded(
                child: Container(
                  // height: 100,
                  // width: 100,
                  color: const Color(0xfff5587b),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const f5();
                      },));
                    },
                    child: Container(
                      margin:
                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: const Center(
                        child: Text(
                          "Typewriter Animated Text",
                          style: TextStyle(
                              fontFamily: 'f22',
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 2,
              ),
              Expanded(
                child: Container(
                  // height: 100,
                  // width: 100,
                  color: const Color(0xffff8a5c),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const f6();
                      },));
                    },
                    child: Container(
                      margin:
                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: const Center(
                        child: Text(
                          "ColorizeAnimated Text",
                          style: TextStyle(
                              fontFamily: 'f23',
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
