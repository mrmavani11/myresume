import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myresume/screen/model/model.dart';
import 'package:share/share.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Fourpage4 extends StatefulWidget {
  int index, index1;
  List list1;

  Fourpage4(this.index, this.index1, this.list1);

  @override
  _Fourpage4State createState() => _Fourpage4State();
}

class _Fourpage4State extends State<Fourpage4> {
  double textsize = 20;
  List<Color> colorlist = [
    Colors.black87,
    Colors.blue,
    Colors.blueGrey,
    Colors.pink,
    Colors.cyan,
    Colors.greenAccent,
    Colors.lightGreen,
    Colors.amberAccent,
    Colors.grey,
    Colors.purpleAccent,
    Colors.teal,
    Colors.red,
    Colors.orange,
    Colors.blueGrey,
  ];
  Color bgcolor = const Color(0XFFF0D9FF);
  Color textcolor = Colors.black87;
  String fonts = "t1";
  String emoji = "😀 😃 😄 😁 😆";
  String folderpath = "";

  Directory directory1 = Directory("storage/emulated/0/Download/Shayri2021");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    creatfolder();
  }

  GlobalKey _globalKey = GlobalKey();

  creatfolder() async {
    Directory directory1 = Directory("storage/emulated/0/download/shayari");

    if (await directory1.exists()) {
      print("already exist");
    } else {
      directory1.create();
      print("create");
    }

    folderpath = directory1.path;
  }

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary = _globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary?;
      ui.Image image = await boundary!.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      print(pngBytes);
      print(bs64);
      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);
      return Future.value();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFF3F1F5),
        appBar: AppBar(
          title: const Text(
            "LOVE SHAYRI",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: const Color(0XFFF3F1F5),
          actions: [
            IconButton(
                onPressed: () {
                  String str = widget.list1[widget.index1];
                  Share.share(str);
                },
                icon: const Icon(
                  Icons.share,
                  color: Colors.black87,
                )),
          ],
        ),
        body: RepaintBoundary(
          key: _globalKey,
          child: ListView(children: [
            Container(
              height: 300,
              color: bgcolor,
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.fromLTRB(12, 20, 12, 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  '''${emoji}\n${widget.list1[widget.index]}\n$emoji''',
                  style: TextStyle(
                    fontFamily: fonts,
                    color: textcolor,
                    wordSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: textsize,
                  ),
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Container(
            height: 150,
            color: const Color(0XFFF3F1F5),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.fromLTRB(6, 0, 3, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            barrierColor: Colors.transparent,
                            isDismissible: false,
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: 350,
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4),
                                  itemCount: colorlist.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        setState(() {
                                          bgcolor = colorlist[index];
                                        });
                                      },
                                      child: Container(
                                        height: 10,
                                        margin: const EdgeInsets.all(10),
                                        color: colorlist[index],
                                      ),

                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0XFFF0D9FF)),
                        child: const Text("Background",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return MaterialPicker(
                                pickerColor: textcolor,
                                onColorChanged: (value) {
                                  setState(() {
                                    textcolor = value;
                                  });
                                },
                                // only on portrait mode
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0XFFF0D9FF)),
                        child: const Text("Text Color",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.fromLTRB(6, 0, 3, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return ListView.builder(
                                itemCount: model.font.length,
                                itemBuilder: (context, index1) {
                                  return ListTile(
                                    title: Center(
                                      child: Text(
                                        "Shayari",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: model.font[index1]),
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        fonts = model.font[index1];
                                      });
                                    },
                                  );
                                },
                              );
                            },
                          );
                        },
                        //fonts = model.font[index];
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0XFFF0D9FF)),
                        child: const Text("Text Font",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(
                                builder: (context, setState1) {
                                  return SizedBox(
                                    height: 150,
                                    width: 100,
                                    child: Slider(
                                      min: 20,
                                      max: 50,
                                      value: textsize,
                                      onChanged: (value) {
                                        print(value);
                                        setState(() {
                                          setState1(() {
                                            textsize = value;
                                          });
                                        });
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0XFFF0D9FF)),
                        child: const Text("Text Size",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15))),
                  )),
                ],
              ),
              Row(children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.fromLTRB(6, 0, 3, 0),
                  child: ElevatedButton(
                      onPressed: () {
                        _capturePng().then((value) {
                          print(value);

                          DateTime curtime = DateTime.now();
                          String time =
                              "${curtime.year}${curtime.month}${curtime.day}${curtime.hour}${curtime.minute}${curtime.second}";
                          String imgpath = "${folderpath}/images$time.jpg";

                          File file = File(imgpath);
                          file.create();
                          file.writeAsBytes(value);

                          String path = file.path;
                          Share.shareFiles([path]);
                        });
                      },
                      style:
                          ElevatedButton.styleFrom(primary: const Color(0XFFF0D9FF)),
                      child: const Text(
                        "Share",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.fromLTRB(6, 0, 3, 0),
                  child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return ListView.builder(
                              itemCount: model.emoji.length,
                              itemBuilder: (context, index1) {
                                return ListTile(
                                  title: Center(
                                    child: Text(
                                      model.emoji[index1],
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      emoji = model.emoji[index1];
                                    });
                                  },
                                );
                              },
                            );
                          },
                        );
                      },
                      style:
                          ElevatedButton.styleFrom(primary: const Color(0XFFF0D9FF)),
                      child: const Text("Emoji",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 15))),
                )),
              ]),
            ])));
  }
}
