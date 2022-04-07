import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu1 extends StatefulWidget {
  const Menu1({Key? key}) : super(key: key);

  @override
  _Menu1State createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  var total = 0;
  String gvalue = "Cash";
  bool bhaji1 = false;
  bool bhaji2 = false;
  bool bhaji3 = false;
  bool bhaji4 = false;
  bool bhaji6 = false;
  bool bhaji7 = false;
  bool bhaji8 = false;
  bool bhaji9 = false;
  bool bhaji10 = false;
  bool bhaji11 = false;
  bool pav1 = false;
  bool pav2 = false;
  bool red = false;
  bool green = false;
  bool nudals1 = false;
  bool nudals2 = false;
  bool nudals3 = false;
  bool nudals4 = false;
  bool nudals5 = false;
  bool nudals6 = false;
  bool nudals7 = false;
  bool nudals8 = false;
  bool nudals9 = false;
  bool nudals10 = false;
  bool nudals11 = false;
  bool nudals12 = false;
  bool masalapav1 = false;
  bool masalapav2 = false;
  bool pulav1 = false;
  bool pulav2 = false;
  bool pulav3 = false;
  bool pulav4 = false;
  bool pulav5 = false;
  bool pulav6 = false;
  bool pulav7 = false;
  bool rise1 = false;
  bool rise2 = false;
  bool rise3 = false;
  bool rise4 = false;
  bool rise5 = false;
  bool rise6 = false;
  bool rise7 = false;
  bool rise8 = false;
  bool rise9 = false;
  bool rise10 = false;
  bool rise11 = false;
  bool bhel1 = false;
  bool bhel2 = false;
  bool bhel3 = false;
  bool bhel4 = false;
  bool dry1 = false;
  bool dry2 = false;
  bool grevi1 = false;
  bool grevi2 = false;
  bool sem1 = false;
  bool sem2 = false;
  bool soup1 = false;
  bool soup2 = false;
  bool soup3 = false;
  bool soup4 = false;
  bool drink = false;
  bool milk = false;

  List name = [1, 2, 3, 4, 5, 6, 7];
  int myval = 1;
  int bhajiA = 1;
  int bhajiB = 1;
  int bhajiC = 1;
  int bhajiD = 1;
  int bhajiE = 1;
  int bhajiF = 1;
  int bhajiG = 1;
  int bhajiH = 1;
  int bhajiI = 1;
  int bhajiJ = 1;
  int pavA = 1;
  int pavB = 1;
  int redA = 1;
  int greenA = 1;
  int nudalsA = 1;
  int nudalsB = 1;
  int nudalsC = 1;
  int nudalsD = 1;
  int nudalsE = 1;
  int nudalsF = 1;
  int nudalsG = 1;
  int nudalsH = 1;
  int nudalsI = 1;
  int nudalsJ = 1;
  int nudalsK = 1;
  int nudalsL = 1;
  int masalapavA = 1;
  int masalapavB = 1;
  int pulavA = 1;
  int pulavB = 1;
  int pulavC = 1;
  int pulavD = 1;
  int pulavE = 1;
  int pulavF = 1;
  int pulavG = 1;
  int riseA = 1;
  int riseB = 1;
  int riseC = 1;
  int riseD = 1;
  int riseE = 1;
  int riseF = 1;
  int riseG = 1;
  int riseH = 1;
  int riseI = 1;
  int riseJ = 1;
  int riseK = 1;
  int bhelA = 1;
  int bhelB = 1;
  int bhelC = 1;
  int bhelD = 1;
  int dryA = 1;
  int dryB = 1;
  int greviA = 1;
  int greviB = 1;
  int semA = 1;
  int semB = 1;
  int soupA = 1;
  int soupB = 1;
  int soupC = 1;
  int soupD = 1;
  int drinkA = 1;
  int milkA = 1;

  List<DropdownMenuItem<int>> myIteam = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < name.length; i++) {
      myIteam.add(DropdownMenuItem(
        child: Text(name[i].toString()),
        value: name[i],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFF9B6A),
        title: const Text("MENU",
          style: TextStyle(color: Color(0xff88E0EF)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return const Menu1();
                  },
                ));
              },
              icon: const Icon(Icons.refresh)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ListView(
                        children: [
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 200,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/3.jpg"),
                                      ),
                                      title: const Text("Pav Bhaji Oil"),
                                      subtitle: const Text("60 rs."),
                                      value: bhaji1,
                                      onChanged: (value) {
                                        setState(() {
                                          bhaji1 = value!;
                                          if (bhaji1 == true) {
                                            total += 60;
                                          } else {
                                            total -= 60;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: bhajiA,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          bhajiA = value as int;
                                          total = total * bhajiA;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/butter2.png"),
                                      ),
                                      title: const Text("Pav Bhaji Butter"),
                                      subtitle: const Text("80 rs."),
                                      value: bhaji2,
                                      onChanged: (value) {
                                        setState(() {
                                          bhaji2 = value!;
                                          if (bhaji2 == true) {
                                            total += 80;
                                          } else {
                                            total -= 80;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: DropdownButton(
                                    value: bhajiB,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          bhajiB = value as int;
                                          total = total * bhajiB;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/2.jpg"),
                                      ),
                                      title: const Text("Jain Pav Bhaji Oil"),
                                      subtitle: const Text("60 rs."),
                                      value: bhaji3,
                                      onChanged: (value) {
                                        setState(() {
                                          bhaji3 = value!;
                                          if (bhaji3 == true) {
                                            total += 60;
                                          } else {
                                            total -= 60;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: bhajiC,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          bhajiC = value as int;
                                          total = total * bhajiC;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/butter.jpg"),
                                      ),
                                      title: const Text("Jain Pav Bhaji Butter"),
                                      subtitle: const Text("80 rs."),
                                      value: bhaji4,
                                      onChanged: (value) {
                                        setState(() {
                                          bhaji4 = value!;
                                          if (bhaji4 == true) {
                                            total += 80;
                                          } else {
                                            total -= 80;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: bhajiD,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          bhajiD = value as int;
                                          total = total * bhajiD;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/1.png"),
                                      ),
                                      title: const Text("cheese Bhaji Butter"),
                                      subtitle: const Text("120 rs."),
                                      value: bhaji6,
                                      onChanged: (value) {
                                        setState(() {
                                          bhaji6 = value!;
                                          if (bhaji6 == true) {
                                            total += 120;
                                          } else {
                                            total -= 120;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: bhajiE,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          bhajiE = value as int;
                                          total = total * bhajiE;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/4.jpg"),
                                      ),
                                      title: const Text("Paneer Bhaji"),
                                      subtitle: const Text("110 rs."),
                                      value: bhaji7,
                                      onChanged: (value) {
                                        setState(() {
                                          bhaji7 = value!;
                                          if (bhaji7 == true) {
                                            total += 110;
                                          } else {
                                            total -= 110;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: bhajiF,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          bhajiF = value as int;
                                          total = total * bhajiF;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/khadaoil.jpg"),
                                      ),
                                      title: const Text("Khada Bhaji Oil"),
                                      subtitle: const Text("90 rs."),
                                      value: bhaji8,
                                      onChanged: (value) {
                                        setState(() {
                                          bhaji8 = value!;
                                          if (bhaji8 == true) {
                                            total += 90;
                                          } else {
                                            total -= 90;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),

                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: bhajiG,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          bhajiG = value as int;
                                          total = total * bhajiG;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/khada1.jpg"),
                                      ),
                                      title: const Text("Khada Bhaji butter"),
                                      subtitle: const Text("110 rs."),
                                      value: bhaji9,
                                      onChanged: (value) {
                                        setState(() {
                                          bhaji9 = value!;
                                          if (bhaji9 == true) {
                                            total += 110;
                                          } else {
                                            total -= 110;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: bhajiH,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          bhajiH = value as int;
                                          total = total * bhajiH;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/gotalo.jpg"),
                                      ),
                                      title: const Text("Bhaji Gotalo"),
                                      subtitle: const Text("140 rs."),
                                      value: bhaji10,
                                      onChanged: (value) {
                                        setState(() {
                                          bhaji10 = value!;
                                          if (bhaji10 == true) {
                                            total += 140;
                                          } else {
                                            total -= 140;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: bhajiI,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          bhajiI = value as int;
                                          total = total * bhajiI;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/spcheese.jpg"),
                                      ),
                                      title: const Text("Spe. Pav Bhaji (cheese)"),
                                      subtitle: const Text("130 rs."),
                                      value: bhaji11,
                                      onChanged: (value) {
                                        setState(() {
                                          bhaji11 = value!;
                                          if (bhaji11 == true) {
                                            total += 130;
                                          } else {
                                            total -= 130;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: bhajiJ,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          bhajiJ = value as int;
                                          total = total * bhajiJ;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/pavoil.jpeg"),
                                      ),
                                      title: const Text("extra pav Oil (1 Pis)"),
                                      subtitle: const Text("02 rs."),
                                      value: pav1,
                                      onChanged: (value) {
                                        setState(() {
                                          pav1 = value!;
                                          if (pav1 == true) {
                                            total += 02;
                                          } else {
                                            total -= 02;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: pavA,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          pavA = value as int;
                                          total = total * pavA;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/pavbutter.jpg"),
                                      ),
                                      title: const Text("extra pav butter (1 Pis)"),
                                      subtitle: const Text("04 rs."),
                                      value: pav2,
                                      onChanged: (value) {
                                        setState(() {
                                          pav2 = value!;
                                          if (pav2 == true) {
                                            total += 04;
                                          } else {
                                            total -= 04;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: pavB,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          pavB = value as int;
                                          total = total * pavB;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/red.jpg"),
                                      ),
                                      title: const Text("Red Chatani"),
                                      subtitle: const Text("40 rs."),
                                      value: red,
                                      onChanged: (value) {
                                        setState(() {
                                          red = value!;
                                          if (red == true) {
                                            total += 40;
                                          } else {
                                            total -= 40;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: redA,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          redA = value as int;
                                          total = total * redA;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/green.jpg"),
                                      ),
                                      title: const Text("Green Chatani"),
                                      subtitle: const Text("40 rs."),
                                      value: green,
                                      onChanged: (value) {
                                        setState(() {
                                          green = value!;
                                          if (green == true) {
                                            total += 40;
                                          } else {
                                            total -= 40;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: greenA,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          greenA = value as int;
                                          total = total * greenA;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n01.jpg"),
                                      ),
                                      title: const Text("Veg. nudals (Half)"),
                                      subtitle: const Text("50 rs."),
                                      value: nudals1,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals1 = value!;
                                          if (nudals1 == true) {
                                            total += 50;
                                          } else {
                                            total -= 50;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsA,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsA = value as int;
                                          total = total * nudalsA;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n1.jpg"),
                                      ),
                                      title: const Text("Veg. nudals (full)"),
                                      subtitle: const Text("70 rs."),
                                      value: nudals2,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals2 = value!;
                                          if (nudals2 == true) {
                                            total += 70;
                                          } else {
                                            total -= 70;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsB,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsB = value as int;
                                          total = total * nudalsB;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n2.jpg"),
                                      ),
                                      title: const Text("Veg. Hakka nudals (Half)"),
                                      subtitle: const Text("50 rs."),
                                      value: nudals3,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals3 = value!;
                                          if (nudals3 == true) {
                                            total += 50;
                                          } else {
                                            total -= 50;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsC,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsC = value as int;
                                          total = total * nudalsC;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n3.jpg"),
                                      ),
                                      title: const Text("Veg. Hakka nudals (full)"),
                                      subtitle: const Text("70 rs."),
                                      value: nudals4,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals4 = value!;
                                          if (nudals4 == true) {
                                            total += 70;
                                          } else {
                                            total -= 70;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsD,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsD = value as int;
                                          total = total * nudalsD;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n4.jpg"),
                                      ),
                                      title: const Text("Sejavan nudals (Half)"),
                                      subtitle: const Text("60 rs."),
                                      value: nudals5,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals5 = value!;
                                          if (nudals5 == true) {
                                            total += 60;
                                          } else {
                                            total -= 60;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsE,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsE = value as int;
                                          total = total * nudalsE;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n5.jpg"),
                                      ),
                                      title: const Text("Sejavan nudals (full)"),
                                      subtitle: const Text("80 rs."),
                                      value: nudals6,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals6 = value!;
                                          if (nudals6 == true) {
                                            total += 80;
                                          } else {
                                            total -= 80;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsF,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsF = value as int;
                                          total = total * nudalsF;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n6.jpg"),
                                      ),
                                      title: const Text("Singapuri nudals (Half)"),
                                      subtitle: const Text("60 rs."),
                                      value: nudals7,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals7 = value!;
                                          if (nudals7 == true) {
                                            total += 60;
                                          } else {
                                            total -= 60;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsG,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsG = value as int;
                                          total = total * nudalsG;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n7.jpg"),
                                      ),
                                      title: const Text("Singapuri nudals (full)"),
                                      subtitle: const Text("80 rs."),
                                      value: nudals8,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals8 = value!;
                                          if (nudals8 == true) {
                                            total += 80;
                                          } else {
                                            total -= 80;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsH,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsH = value as int;
                                          total = total * nudalsH;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n8.jpg"),
                                      ),
                                      title: const Text("Manchurian nudals (Half)"),
                                      subtitle: const Text("60 rs."),
                                      value: nudals9,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals9 = value!;
                                          if (nudals9 == true) {
                                            total += 60;
                                          } else {
                                            total -= 60;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsI,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsI = value as int;
                                          total = total * nudalsI;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n9.jpg"),
                                      ),
                                      title: const Text("Manchurian nudals (full)"),
                                      subtitle: const Text("80 rs."),
                                      value: nudals10,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals10 = value!;
                                          if (nudals10 == true) {
                                            total += 80;
                                          } else {
                                            total -= 80;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsJ,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsJ = value as int;
                                          total = total * nudalsJ;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n10.jpg"),
                                      ),
                                      title: const Text("Rice nudals (Half)"),
                                      subtitle: const Text("60 rs."),
                                      value: nudals11,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals11 = value!;
                                          if (nudals11 == true) {
                                            total += 60;
                                          } else {
                                            total -= 60;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsK,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsK = value as int;
                                          total = total * nudalsK;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 2,
                          ),
                          Container(
                            color: const Color(0xff88E0EF),
                            child: Row(
                              children: [
                                Expanded(flex: 8,
                                  child: Container(
                                    color: const Color(0xff88E0EF),
                                    width: 250,
                                    child: CheckboxListTile(
                                      secondary: const CircleAvatar(
                                        backgroundImage: AssetImage("image/n11.jpg"),
                                      ),
                                      title: const Text("Rice nudals (full)"),
                                      subtitle: const Text("80 rs."),
                                      value: nudals12,
                                      onChanged: (value) {
                                        setState(() {
                                          nudals12 = value!;
                                          if (nudals12 == true) {
                                            total += 80;
                                          } else {
                                            total -= 80;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(flex: 1,
                                  child: DropdownButton(
                                    value: nudalsL,
                                    items: myIteam,
                                    onChanged: (value) {
                                      {
                                        setState(() {
                                          nudalsL = value as int;
                                          total = total * nudalsL;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              )),
          Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xffFF9B6A),
            child: Row(
              children: [
                Text(
                  "Total = $total",
                  style: const TextStyle(fontSize: 25, color: Color(0xff88E0EF)),
                ),
                Row(
                  children: [
                    Radio(
                      value: "Cash",
                      groupValue: gvalue,
                      onChanged: (value) {
                        setState(() {
                          gvalue = value!.toString();
                        });
                      },
                    ),
                    const Text(
                      "Cash",
                      style: TextStyle(color: Color(0xff88E0EF)),
                    ),
                    Radio(
                      value: "Online",
                      groupValue: gvalue,
                      onChanged: (value) {
                        setState(() {
                          gvalue = value!.toString();
                        });
                      },
                    ),
                    const Text(
                      "Online",
                      style: TextStyle(color: Color(0xff88E0EF)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            // height: double.infinity,
            // width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("$total Paid Successful by $gvalue")));
                  });
                },
                child: const Text("Pay")),
          )
        ],
      ),
    );
  }
}