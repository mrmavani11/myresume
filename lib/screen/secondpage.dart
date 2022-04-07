import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:myresume/screen/model/model.dart';
import 'package:myresume/screen/thirdpage.dart';

class Secondpage extends StatefulWidget {
  int index;

  Secondpage(this.index);

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  List<String> list = [];
  List<Color> colorlist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.index == 0) {
      list = model.Emotional;
    }
    if (widget.index == 1) {
      list = model.Love;
    }
    if (widget.index == 2) {
      list = model.god;
    }
    if (widget.index == 3) {
      list = model.Motivational;
    }
    if (widget.index == 4) {
      list = model.Friendship;
    }
    if (widget.index == 5) {
      list = model.Alone;
    }
    if (widget.index == 6) {
      list = model.Anniversary;
    }
    if (widget.index == 7) {
      list = model.Apnapan;
    }
    if (widget.index == 8) {
      list = model.Dard;
    }
    if (widget.index == 9) {
      list = model.Dhoka;
    }
    if (widget.index == 10) {
      list = model.Dua;
    }
    if (widget.index == 11) {
      list = model.Ehsaas;
    }
    if (widget.index == 12) {
      list = model.Heart;
    }

    for (int i = 0; i < list.length; i = i + 4) {
      colorlist.add(const Color(0xFFE4EFFF));
      colorlist.add(const Color(0xFFEAFADB));
      colorlist.add(const Color(0xFFE5FFE3));
      colorlist.add(const Color(0xFFF0E1FF));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: AnimationLimiter(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: list.length,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                delay: const Duration(milliseconds: 100),
                position: index,
                child: SlideAnimation(
                  duration: const Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  horizontalOffset: 30,
                  verticalOffset: 300.0,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        height: 250,
                        decoration: BoxDecoration(
                          color: colorlist[index],
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 40,
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        child: Text(
                          list[index],
                          textAlign: TextAlign.center,
                          maxLines: 6,
                          style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.only(
                                  left: 6, right: 6, bottom: 30, top: 220),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                    ),
                                  ]),
                              child: Container(
                                // margin: EdgeInsets.only(left: 40),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 50,
                              width: 200,
                              margin: const EdgeInsets.only(
                                  left: 6, right: 6, bottom: 30, top: 220),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                    ),
                                  ]),
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          String str = list[index];
                                          FlutterClipboard.copy(str)
                                              .then((value) {
                                            Fluttertoast.showToast(
                                                msg: "Copied",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 1,
                                                backgroundColor: Colors.black87,
                                                textColor: Colors.white,
                                                fontSize: 16.0);
                                          });
                                        },
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.copy,
                                              color: Colors.black,
                                              size: 25,
                                            ),
                                            Text(
                                              "Copy",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                            builder: (context) {
                                              return thirdpage3(
                                                  widget.index, list, index);
                                            },
                                          ));
                                        },
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.edit,
                                              color: Colors.black,
                                              size: 25,
                                            ),
                                            Text(
                                              "Edit",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

