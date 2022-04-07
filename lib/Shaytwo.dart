import 'package:flutter/material.dart';
import 'package:myresume/Shaylist.dart';
import 'package:myresume/Shaythree.dart';

class S2 extends StatefulWidget {
  String  title,img;
  int index1;

  S2( this.title,this.index1, this.img);

  @override
  _S2State createState() => _S2State();
}

class _S2State extends State<S2> {
  List list = [];
  String img = "";



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.index1 == 0) {
      list = Mod.pre;
      img = Mod.arr[widget.index1];
    }
    if (widget.index1 == 1) {
      list = Mod.love;
      img = Mod.arr[widget.index1];
    }
    if (widget.index1 == 2) {
      list = Mod.sad;
      img = Mod.arr[widget.index1];
    }
    if (widget.index1 == 3) {
      list = Mod.funn;
      img = Mod.arr[widget.index1];
    }
    if (widget.index1 == 4) {
      list = Mod.poli;
      img = Mod.arr[widget.index1];

    }
    if (widget.index1 == 5) {
      list = Mod.desh;
      img = Mod.arr[widget.index1];
    }
    if (widget.index1 == 6) {
      list = Mod.dost;
      img = Mod.arr[widget.index1];
    }
    if (widget.index1 == 7) {
      list = Mod.birth;
      img = Mod.arr[widget.index1];
    }
    if (widget.index1 == 8) {
      list = Mod.bottal;
      img = Mod.arr[widget.index1];
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

              icon: const Icon(Icons.share), onPressed: () {

            },),
          ],
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  Third(list,index,widget.title);
                    },));
                  },
                  tileColor: const Color(0xff09194F),
                  minVerticalPadding: 30,
                  leading: Image.asset(img),
                  title: Text(
                    list[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xffFDFDEB),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ));
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: list.length));
  }
}
