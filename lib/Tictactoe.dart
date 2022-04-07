import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int turn = 0, win1 = 0;
  String a = '';
  String b = '';
  String c = '';
  String d = '';
  String e = '';
  String f = '';
  String g = '';
  String h = '';
  String i = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Color(0xff17223b),
            ),
          ),
          title: const Text("TIC TAC TOE"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Demo();
                    },
                  ));
                },
                icon: Icon(Icons.refresh))
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
                    setState(() {
                      if (a == '' && win1 == 0) {
                        if (turn % 2 == 0) {
                          a = 'x';
                        } else {
                          a = 'o';
                        }
                        turn++;
                        win();
                      }
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        a,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     blurRadius: 5,
                      //   )
                      // ],
                      border: Border.all(width: 8.0, color: Color(0xff6b778d)),
                      color: Color(0xffff6768),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      if (b == '' && win1 == 0) {
                        if (turn % 2 == 0) {
                          b = 'x';
                        } else {
                          b = 'o';
                        }
                        turn++;
                        win();
                      }
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        b,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 8.0, color: Color(0xff6b778d)),
                      // border: Border(top: BorderSide(width: 8.0, color: Colors.grey),
                      //     left: BorderSide(width: 8.0, color: Colors.red),
                      //   right: BorderSide(width: 8.0, color: Colors.lightBlue),
                      //   bottom: BorderSide(width: 8.0, color: Colors.pinkAccent),
                      // ),
                      color: Color(0xff263859),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      if (c == '' && win1 == 0) {
                        if (turn % 2 == 0) {
                          c = 'x';
                        } else {
                          c = 'o';
                        }
                        turn++;
                        win();
                      }
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        c,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 8.0, color: Color(0xff6b778d)),
                      // border: Border.symmetric(
                      //     vertical: BorderSide(
                      //       width: 5,
                      //       color: Colors.lightBlue,
                      //       style: BorderStyle.solid,
                      //     ),
                      //     horizontal: BorderSide(
                      //       width: 5,
                      //       color: Colors.grey,
                      //     )
                      // ),
                      color: Color(0xffff6768),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                  ),
                )),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      if (d == '' && win1 == 0) {
                        if (turn % 2 == 0) {
                          d = 'x';
                        } else {
                          d = 'o';
                        }
                        turn++;
                        win();
                      }
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        d,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 8.0, color: Color(0xff6b778d)),
                      color: Color(0xff263859),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      if (e == '' && win1 == 0) {
                        if (turn % 2 == 0) {
                          e = 'x';
                        } else {
                          e = 'o';
                        }
                        turn++;
                        win();
                      }
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        e,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 8.0, color: Color(0xff6b778d)),
                      color: Color(0xffff6768),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      if (f == '' && win1 == 0) {
                        if (turn % 2 == 0) {
                          f = 'x';
                        } else {
                          f = 'o';
                        }
                        turn++;
                        win();
                      }
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        f,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 8.0, color: Color(0xff6b778d)),
                      color: Color(0xff263859),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                  ),
                )),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      if (g == '' && win1 == 0) {
                        if (turn % 2 == 0) {
                          g = 'x';
                        } else {
                          g = 'o';
                        }
                        turn++;
                        win();
                      }
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        g,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 8.0, color: Color(0xff6b778d)),
                      color: Color(0xffff6768),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      if (h == '' && win1 == 0) {
                        if (turn % 2 == 0) {
                          h = 'x';
                        } else {
                          h = 'o';
                        }
                        turn++;
                        win();
                      }
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        h,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 8.0, color: Color(0xff6b778d)),
                      color: Color(0xff263859),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      if (i == '' && win1 == 0) {
                        if (turn % 2 == 0) {
                          i = 'x';
                        } else {
                          i = 'o';
                        }
                        turn++;
                        win();
                      }
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        i,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 8.0, color: Color(0xff6b778d)),
                      color: Color(0xffff6768),
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                  ),
                )),
              ],
            )),
          ],
        ));
  }

  void win() {
    if ((a == 'x' && b == 'x' && c == 'x') ||
        (d == 'x' && e == 'x' && f == 'x') ||
        (g == 'x' && h == 'x' && i == 'x') ||
        (a == 'x' && e == 'x' && i == 'x') ||
        (c == 'x' && e == 'x' && g == 'x') ||
        (a == 'x' && d == 'x' && g == 'x') ||
        (b == 'x' && e == 'x' && h == 'x') ||
        (c == 'x' && f == 'x' && i == 'x')) {
      win1 = 1;
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("X is Won!")));
    } else if ((a == 'o' && b == 'o' && c == 'o') ||
        (d == 'o' && e == 'o' && f == 'o') ||
        (g == 'o' && h == 'o' && i == 'o') ||
        (a == 'o' && e == 'o' && i == 'o') ||
        (c == 'o' && e == 'o' && g == 'o') ||
        (a == 'o' && d == 'o' && g == 'o') ||
        (b == 'o' && e == 'o' && h == 'o') ||
        (c == 'o' && f == 'o' && i == 'o')) {
      win1 = 1;
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("O is Won!")));
    }
  }
}
