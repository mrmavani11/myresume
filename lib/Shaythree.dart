import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myresume/Shayfour.dart';
import 'package:share/share.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Third extends StatefulWidget {
  List list;
  int index;
  String title;

  Third(this.list, this.index,this.title);

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {


  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9CE00),
        title:  Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              String str = widget.list[widget.index];
              Share.share(str);
            },
          ),
        ],
      ),
      body: Container(
        child: Column(children: [
          Container(
            height: 55,
            alignment: Alignment.center,
            child: Text(
              "${widget.index + 1} / ${widget.list.length}",
              style: const TextStyle(
                color: Color(0xffFDFDEB),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            color: const Color(0xff00818A),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),
          Center(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFF5F5F),
                ),
                height: 300,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      widget.index = value;
                    });
                  },
                  itemCount: widget.list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Center(
                        child: Text(
                          "${widget.list[widget.index]}",
                          style: const TextStyle(
                            color: Color(0xffd9d9f3),
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    );
                  },
                )),
          ),
        ]),
      ),

      bottomNavigationBar:Container(
        height: 50,
        color: const Color(0xff6abe83),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
        child: Row(
          children: [
            Expanded(child: IconButton(onPressed: () {
              FlutterClipboard.copy(widget.list[widget.index]);
              Fluttertoast.showToast(
                  msg: "COPIED",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0
              );

            }, icon: const Icon(Icons.copy))
            ),

            Expanded(child: IconButton(onPressed: () {
              if(widget.index>0)
              {
                widget.index--;
                pageController.jumpToPage(widget.index);
              }

            }, icon: const Icon(Icons.arrow_back_ios_new))
            ),

            Expanded(child: IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return four(widget.title,widget.list,widget.index);
              },));

            }, icon: const Icon(Icons.edit_off))
            ),

            Expanded(child: IconButton(onPressed: () {
              if(widget.index<widget.list.length-1)
              {
                widget.index++;
                pageController.jumpToPage(widget.index);
              }

            }, icon: const Icon(Icons.arrow_forward_ios))
            ),

            Expanded(child: IconButton(onPressed: () {
              String str = widget.list[widget.index];
              Share.share(str);

            }, icon: const Icon(Icons.share))
            ),


          ],
        ),
      ),

    );
  }
}
