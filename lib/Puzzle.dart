import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class Puzzle extends StatefulWidget {
  const Puzzle({Key? key}) : super(key: key);

  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  List str = ["", "", "", "", "", "", "", "", ""];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    str.shuffle();

    for (int i = 0; i < 9; i++) {
      while (true) {
        int number = Random().nextInt(9); // 0 to 8
        if (!str.contains("$number")) {
          str[i] = "$number";
          break;
        }
      }
    }

    // print("First ==== ${str}");

    for (int i = 0; i < 9; i++) {
      if (str[i] == "0") {
        str[i] = "";
      }
    }

    // print("Second ==== ${str}");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Color(0xffffb6b9),
            ),
          ),
          title: const Text("PUZZLE", style: TextStyle(
            color: Color(0xff6b778d),
            fontStyle: FontStyle.italic,
          ),),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const Puzzle();
                    },
                  ));
                },
                icon: const Icon(Icons.refresh,
                  color: Color(0xff6b778d),))
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          //1,3 (0)
                          setState(() {
                            if (str[1] == "") {
                              str[1] = str[0];
                              str[0] = "";
                            } else if (str[3] == "") {
                              str[3] = str[0];
                              str[0] = "";
                            }
                            // win();
                          });
                        },
                        child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: Center(
                                child: Text(
                                  str[0],
                                  style: const TextStyle(fontSize: 50),
                                )),
                            decoration: BoxDecoration(
                              border:
                              Border.all(
                                  width: 8.0, color: const Color(0xfffae3d9)),
                              color: const Color(0xff8ac6d1),
                            )),
                      ),
                    ),
                    Expanded(
                        child: InkWell(
                          onTap: () {
                            //0,4,2 (1)
                            setState(() {
                              if (str[0] == "") {
                                str[0] = str[1];
                                str[1] = "";
                              } else if (str[4] == "") {
                                str[4] = str[1];
                                str[1] = "";
                              } else if (str[2] == "") {
                                str[2] = str[1];
                                str[1] = "";
                              }
                              // win();
                            });
                          },
                          child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Center(
                                  child: Text(
                                    str[1],
                                    style: const TextStyle(fontSize: 50),
                                  )),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 8.0, color: const Color(0xfffae3d9)),
                                color: const Color(0xff8ac6d1),
                              )),
                        )),
                    Expanded(
                        child: InkWell(
                          onTap: () {
                            //1,5 (2)
                            setState(() {
                              if (str[1] == "") {
                                str[1] = str[2];
                                str[2] = "";
                              } else if (str[5] == "") {
                                str[5] = str[2];
                                str[2] = "";
                              }
                              // win();
                            });
                          },
                          child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Center(
                                  child: Text(
                                    str[2],
                                    style: const TextStyle(fontSize: 50),
                                  )),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 8.0, color: const Color(0xfffae3d9)),
                                color: const Color(0xff8ac6d1),
                              )),
                        )),
                  ],
                )),

            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          //0,4,6 (3)
                          setState(() {
                            if (str[0] == "") {
                              str[0] = str[3];
                              str[3] = "";
                            } else if (str[4] == "") {
                              str[4] = str[3];
                              str[3] = "";
                            } else if (str[6] == "") {
                              str[6] = str[3];
                              str[3] = "";
                            }
                            // win();
                          });
                        },
                        child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: Center(
                                child: Text(
                                  str[3],
                                  style: const TextStyle(fontSize: 50),
                                )),
                            decoration: BoxDecoration(
                              border:
                              Border.all(
                                  width: 8.0, color: const Color(0xfffae3d9)),
                              color: const Color(0xff8ac6d1),
                            )),
                      ),
                    ),
                    Expanded(
                        child: InkWell(
                          onTap: () {
                            //1,3,7,5 (4)
                            setState(() {
                              if (str[1] == "") {
                                str[1] = str[4];
                                str[4] = "";
                              } else if (str[3] == "") {
                                str[3] = str[4];
                                str[4] = "";
                              } else if (str[7] == "") {
                                str[7] = str[4];
                                str[4] = "";
                              } else if (str[5] == "") {
                                str[5] = str[4];
                                str[4] = "";
                              }
                              // win();
                            });
                          },
                          child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Center(
                                  child: Text(
                                    str[4],
                                    style: const TextStyle(fontSize: 50),
                                  )),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 8.0, color: const Color(0xfffae3d9)),
                                color: const Color(0xff8ac6d1),
                              )),
                        )),
                    Expanded(
                        child: InkWell(
                          onTap: () {
                            //2,4,8 (5)
                            setState(() {
                              if (str[2] == "") {
                                str[2] = str[5];
                                str[5] = "";
                              } else if (str[4] == "") {
                                str[4] = str[5];
                                str[5] = "";
                              } else if (str[8] == "") {
                                str[8] = str[5];
                                str[5] = "";
                              }
                              // win();
                            });
                          },
                          child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Center(
                                  child: Text(
                                    str[5],
                                    style: const TextStyle(fontSize: 50),
                                  )),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 8.0, color: const Color(0xfffae3d9)),
                                color: const Color(0xff8ac6d1),
                              )),
                        )),
                  ],
                )),

            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          //3,7 (6)
                          setState(() {
                            if (str[3] == "") {
                              str[3] = str[6];
                              str[6] = "";
                            } else if (str[7] == "") {
                              str[7] = str[6];
                              str[6] = "";
                            }
                            // win();
                          });
                        },
                        child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: Center(
                                child: Text(
                                  str[6],
                                  style: const TextStyle(fontSize: 50),
                                )),
                            decoration: BoxDecoration(
                              border:
                              Border.all(
                                  width: 8.0, color: const Color(0xfffae3d9)),
                              color: const Color(0xff8ac6d1),
                            )),
                      ),
                    ),
                    Expanded(
                        child: InkWell(
                          onTap: () {
                            //6,4,8 (7)
                            setState(() {
                              if (str[6] == "") {
                                str[6] = str[7];
                                str[7] = "";
                              } else if (str[4] == "") {
                                str[4] = str[7];
                                str[7] = "";
                              } else if (str[8] == "") {
                                str[8] = str[7];
                                str[7] = "";
                              }
                              // win();
                            });
                          },
                          child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Center(
                                  child: Text(
                                    str[7],
                                    style: const TextStyle(fontSize: 50),
                                  )),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 8.0, color: const Color(0xfffae3d9)),
                                color: const Color(0xff8ac6d1),
                              )),
                        )),
                    Expanded(
                        child: InkWell(
                          onTap: () {
                            //7,5 (8)
                            setState(() {
                              if (str[7] == "") {
                                str[7] = str[8];
                                str[8] = "";
                              } else if (str[5] == "") {
                                str[5] = str[8];
                                str[8] = "";
                              }
                              // win();
                            });
                          },
                          child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Center(
                                  child: Text(
                                    str[8],
                                    style: const TextStyle(fontSize: 50),
                                  )),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 8.0, color: const Color(0xfffae3d9)),
                                color: const Color(0xff8ac6d1),
                              )),
                        )),
                  ],
                )),
            // Spacer(),

            // Spacer()
          ],
        ),
        bottomNavigationBar: TextButton(
            onPressed: () {
              // win();
              showDialog(
                context: context,
                builder: (context) {
                  if (str[0] == '1' &&
                      str[1] == '2' &&
                      str[2] == '3' &&
                      str[3] == '4' &&
                      str[4] == '5' &&
                      str[5] == '6' &&
                      str[6] == '7' &&
                      str[7] == '8' &&
                      str[8] == ''
                  ) {
                    return AlertDialog(
                      backgroundColor: const Color(0xffffb6b9),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Puzzle();
                                  },
                                ));
                          },
                          child: const Text("YES"),
                          style: TextButton.styleFrom(
                            primary: const Color(0xff6b778d),
                            backgroundColor: const Color(0xff8ac6d1),
                            // onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))),
                          ),
                        ),

                        TextButton(onPressed: () {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              backgroundColor: const Color(0xffffb6b9),
                              actions: [
                                TextButton(onPressed: () {

                                }, child: const Text("YES"),
                                  style: TextButton.styleFrom(
                                    primary: const Color(0xff6b778d),
                                    backgroundColor: const Color(0xff8ac6d1),
                                    // onPrimary: Colors.white,
                                    shape: const BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  ),
                                )
                              ],
                              title: const Text("You Want Exit!!"),
                            );
                          },);
                        },
                          child: const Text("NO"),
                          style: TextButton.styleFrom(
                            primary: const Color(0xff6b778d),
                            backgroundColor: const Color(0xff8ac6d1),
                            // onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))),
                          ),
                        ),
                      ],
                      title: const Text("You're Won !!Play Again...?"),
                    );
                  }
                  else {
                    return AlertDialog(
                      backgroundColor: const Color(0xffffb6b9),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Puzzle();
                                  },
                                ));
                          },
                          child: const Text("YES"),
                          style: TextButton.styleFrom(
                            primary: const Color(0xff6b778d),
                            backgroundColor: const Color(0xff8ac6d1),
                            // onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))),
                          ),),

                        TextButton(onPressed: () {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              backgroundColor: const Color(0xffffb6b9),
                              actions: [
                                TextButton(onPressed: () {

                                }, child: const Text("YES"),
                                  style: TextButton.styleFrom(
                                    primary: const Color(0xff6b778d),
                                    backgroundColor: const Color(0xff8ac6d1),
                                    // onPrimary: Colors.white,
                                    shape: const BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  ),
                                )
                              ],
                              title: const Text("You Want Exit!!"),
                            );
                          },);
                        },
                          child: const Text("NO"),
                          style: TextButton.styleFrom(
                            primary: const Color(0xff6b778d),
                            backgroundColor: const Color(0xff8ac6d1),
                            // onPrimary: Colors.white,
                            shape: const BeveledRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))),
                          ),),
                      ],
                      title: const Text("You're Fail !!Play Again...?"),
                    );
                  }
                },
              );
            },
            child: const Text("SUBMIT", style: TextStyle(
              color: Color(0xff6b778d),
            ),)),
        backgroundColor: const Color(0xffffb6b9),
      ),
    );
  }
}