import 'dart:ui' as ui;
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myresume/screen/model/model.dart';
import 'package:share/share.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:horizontal_card_pager/card_item.dart';

class thirdpage3 extends StatefulWidget {
  int index, index1;
  List list1;

  thirdpage3(this.index, this.list1, this.index1);

  @override
  _thirdpage3State createState() => _thirdpage3State();
}

class _thirdpage3State extends State<thirdpage3> {
  List<CardItem> items = [
    IconTitleCardItem(
        text: "Copy",
        iconData: Icons.copy,
        selectedIconTextColor: Colors.black,
        selectedBgColor: const Color(0XFFF3EEFE)),
    IconTitleCardItem(
        text: "Left",
        iconData: Icons.chevron_left_rounded,
        selectedIconTextColor: Colors.black,
        selectedBgColor: const Color(0XFFF3EEFE)),
    IconTitleCardItem(
        text: "Right",
        iconData: Icons.chevron_right_rounded,
        selectedIconTextColor: Colors.black,
        selectedBgColor: const Color(0XFFF3EEFE)),
    IconTitleCardItem(
        text: "Share",
        iconData: Icons.share,
        selectedIconTextColor: Colors.black,
        selectedBgColor: const Color(0XFFF3EEFE)),
    IconTitleCardItem(
        text: "BG Color",
        iconData: Icons.collections_outlined,
        selectedIconTextColor: Colors.black,
        selectedBgColor: const Color(0XFFF3EEFE)),
    IconTitleCardItem(
        text: "Text Color",
        iconData: Icons.color_lens,
        selectedIconTextColor: Colors.black,
        selectedBgColor: const Color(0XFFF3EEFE)),
    IconTitleCardItem(
        text: "Text Font",
        iconData: Icons.font_download,
        selectedIconTextColor: Colors.black,
        selectedBgColor: const Color(0XFFF3EEFE)),
    IconTitleCardItem(
        text: "Text Size",
        iconData: Icons.format_size,
        selectedIconTextColor: Colors.black,
        selectedBgColor: const Color(0XFFF3EEFE)),
    IconTitleCardItem(
        text: "Emoji",
        iconData: Icons.emoji_emotions,
        selectedIconTextColor: Colors.black,
        selectedBgColor: const Color(0XFFF3EEFE)),
  ];
  double textsize = 20;
  List<Color> colorlist = [
    const Color(0XFFFFDEFA),
    const Color(0XFFD1E8E4),
    const Color(0XFFF0D9FF),
    const Color(0XFFB5EAEA),
    const Color(0XFFEDF6E5),
    const Color(0XFFBEAEE2),
    const Color(0XFFF7DAD9),
    const Color(0XFFDEEDF0),
    const Color(0XFFE4D3CF),
    const Color(0XFFEDFFEC),
    const Color(0XFFFCD1D1),
    const Color(0XFFCAF0F8),
    const Color(0XFFC65D7B),
    const Color(0XFFACB992),
    const Color(0XFF1572A1),
    const Color(0XFF6998AB),
    const Color(0XFF9E7777),
    const Color(0XFF78C4D4),
    const Color(0XFF8F4F4F),
    const Color(0XFFB7657B),
    const Color(0XFFF2B4B4),
    const Color(0XFF9A8194),
    const Color(0XFF314E52),
    const Color(0XFFF2A154),
    const Color(0XFF1687A7),
    const Color(0XFF276678),
  ];
  Color bgcolor = const Color(0XFFE4EFFF);
  Color textcolor = Colors.black87;
  String fonts = "t1";
  String emoji = "😀 😃 😄 😁 😆";
  String folderpath = "";
  PageController pageController = PageController();
  Directory directory1 = Directory("storage/emulated/0/Download/Shayri2021");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    creatfolder();
    pageController = PageController(initialPage: widget.index1);
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            RepaintBoundary(
              key: _globalKey,
              child: ListView(children: [
                Container(
                  height: 400,
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.fromLTRB(12, 90, 12, 12),
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                    ),
                  ], color: bgcolor, borderRadius: BorderRadius.circular(10)),
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (value) {
                      print(value);

                      setState(() {
                        widget.index1 = value;
                      });
                    },
                    itemCount: widget.list1.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Text(
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
                              Container(
                                  margin: const EdgeInsets.only(top: 40),
                                  child: const Text("Todays Quote's")),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: HorizontalCardPager(
                        // ignore: avoid_print
                        onPageChanged: (page) => print("page : $page"),
                        // ignore: avoid_print
                        onSelectedItem: (page) {
                          if (page == 0) {
                            String str = widget.list1[widget.index1];
                            FlutterClipboard.copy(str).then((value) {
                              Fluttertoast.showToast(
                                  msg: "Copied",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.black87,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            });
                            print(str);
                          } else if (page == 1) {
                            if (widget.index1 >= 1) {
                              widget.index1--;
                            }
                            setState(() {});
                          } else if (page == 2) {
                            if (widget.index1 < widget.list1.length - 1) {
                              widget.index1++;
                            }
                            setState(() {});
                          } else if (page == 3) {
                            _capturePng().then((value) {
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
                          } else if (page == 4) {
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
                          } else if (page == 5) {
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
                          } else if (page == 6) {
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
                          } else if (page == 7) {
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
                          } else if (page == 8) {
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
                            setState(() {});
                          }
                        },

                        items: items,
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * .5,
                // ),
              ]),
            ),
            Positioned(
              top: 5,
              left: 10,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 3, top: 3),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          boxShadow: kElevationToShadow[5],
                          color: const Color(0XFFF3EEFE),
                          shape: BoxShape.circle),
                      child: BackButton()
                      // const Icon(
                      //   Icons.arrow_back_ios_new_rounded,
                      //   color: Colors.black,
                      //   size: 30,
                      // ),
                      ),
                ],
              ),
            ),
            Positioned(
              top: 5,
              left: 295,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 3, top: 3),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        boxShadow: kElevationToShadow[5],
                        color: const Color(0XFFF3EEFE),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.share,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 5,
              left: 110,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 3, top: 3),
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        boxShadow: kElevationToShadow[5],
                        color: const Color(0XFFF3EEFE),
                      ),
                      child: const Text(
                        "Todays Quote's",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
