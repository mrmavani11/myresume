import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:myresume/Shaylist.dart';
import 'package:share/share.dart';

class four extends StatefulWidget {
  String title;
  List list;
  int index;

  four(this.title, this.list, this.index);

  @override
  _fourState createState() => _fourState();
}

class _fourState extends State<four> {


  String emoji = "😖 😫 😩 🥺 😢 😭";
  String fn = "f1";
  double textsize = 20;
  Color bgcolor = Colors.brown;
  Color textcolor = Colors.white;
  String folderpath = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createfoldeer();
  }

  GlobalKey _globalKey = GlobalKey();

  createfoldeer() async {

    Directory directory1 = await Directory("storage/emulated/0/Download/Shayari2021");

    if (await directory1.exists()) {
      print("Already Exits");
    } else {
      directory1.create();
      print("create");
    }

    folderpath = directory1.path;
  }

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary =
      _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary?;
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
      appBar: AppBar(
        backgroundColor: const Color(0xffF9CE00),
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              _capturePng().then((value) {
                print(value);

                DateTime curtime = DateTime.now();

                String time = "${curtime.year}${curtime.month}${curtime.day}${curtime.hour}${curtime.minute}${curtime.second}";
                String imagepath = "${folderpath}/Image$time.jpg";

                File file = File(imagepath);
                file.create();
                file.writeAsBytes(value);

                String path = file.path;
                Share.shareFiles([path]);
              });
            },
          ),
        ],
      ),
      body: RepaintBoundary(
        key: _globalKey,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: bgcolor,
          ),
          height: 300,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: ListView(
            children: [
              Text(
                "${emoji}\n${widget.list[widget.index]}\n${emoji}",
                style: TextStyle(
                  color: textcolor,
                  fontFamily: fn,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: textsize,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 50,
        color: const Color(0xff6abe83),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Row(
          children: [
            Expanded(
              child:
              IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
            ),
            Expanded(
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.zoom_out_map))),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: const Color(0xff6abe83),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
        child: Column(
          children: [
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
                                return MaterialPicker(
                                    pickerColor: bgcolor,
                                    onColorChanged: (value) {
                                      setState(() {
                                        bgcolor = value;
                                      });
                                    }
                                  // only on portrait mode
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff990033), // background
                            // onPrimary: Colors.white, // foreground
                          ),
                          child: const Text("Background")),
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
                                    }
                                  // only on portrait mode
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff990033), // background
                            // onPrimary: Colors.white, // foreground
                          ),
                          child: const Text("Text Color")),
                    )),
                Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(3, 0, 6, 0),
                      child: ElevatedButton(
                          onPressed: () {

                            _capturePng().then((value) {
                              print(value);

                              DateTime curtime = DateTime.now();

                              String time = "${curtime.year}${curtime.month}${curtime.day}${curtime.hour}${curtime.minute}${curtime.second}";
                              String imagepath = "${folderpath}/Image$time.jpg";

                              File file = File(imagepath);
                              file.create();
                              file.writeAsBytes(value);

                              String path = file.path;
                              Share.shareFiles([path]);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff990033), // background
                            // onPrimary: Colors.white, // foreground
                          ),
                          child: const Text("Share")),
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
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Container(
                                  child: ListView.builder(
                                    itemCount: Mod.fontfamily.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            fn = Mod.fontfamily[index];
                                          });
                                        },
                                        child: Center(
                                          child: Text(
                                            "Shayari",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontFamily: Mod.fontfamily[index]),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff990033), // background
                            // onPrimary: Colors.white, // foreground
                          ),
                          child: const Text("Font")),
                    )),
                Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Container(
                                  child: ListView.builder(
                                    itemCount: Mod.emoji.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        title: Text(
                                          Mod.emoji[index],
                                          textAlign: TextAlign.center,
                                        ),
                                        onTap: () {
                                          setState(() {
                                            emoji = Mod.emoji[index];
                                          });
                                        },
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff990033), // background
                            // onPrimary: Colors.white, // foreground
                          ),
                          child: const Text("Emoji")),
                    )),
                Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(3, 0, 6, 0),
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (context, setState1) {
                                    return Container(
                                      height: 100,
                                      child: Slider(
                                          min: 10,
                                          max: 50,
                                          value: textsize,
                                          onChanged: (value) {
                                            setState(() {
                                              setState1(() {
                                                textsize = value;
                                              });
                                            });
                                          }),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff990033), // background
                            // onPrimary: Colors.white, // foreground
                          ),
                          child: const Text("Text Size")),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
