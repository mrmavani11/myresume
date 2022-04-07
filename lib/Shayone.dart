import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myresume/Shaytwo.dart';
import 'package:permission_handler/permission_handler.dart';
class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  List<String> arr = [
    "image/OIP.png",
    "image/R.png",
    "image/Sad.png",
    "image/funny.png",
    "image/political.png",
    "image/flag1.png",
    "image/friend.png",
    "image/birthday.png",
    "image/bottal.png"
  ];
  List<String> name = [
    "Prerana",
    "Love",
    "Sad",
    "Funny Love",
    "Political",
    "Desh Bhakti",
    "Friend Zone",
    "Happy Birthday",
    "Bottal"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }

  initData()
  async {
    var status = await Permission.storage.status;

    if(status.isDenied)
    {
      await[
        Permission.storage,
      ].request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9CE00),
        title: const Text("SHAYARI"),
        actions: [
          IconButton(

            icon: const Icon(Icons.share), onPressed: () {  },),
          PopupMenuButton(
            icon: const Icon(Icons.menu),  //don't specify icon if you want 3 dot menu
            color: const Color(0xffa8dba8),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 0,
                child: Text("Setting",style: TextStyle(color: Colors.white),),

              ),
              const PopupMenuItem(
                value: 0,
                child: Text("Rate Us",style: TextStyle(color: Colors.white),),

              ),
              const PopupMenuItem(
                value: 0,
                child: Text("Share",style: TextStyle(color: Colors.white),),

              ),
              const PopupMenuItem(
                value: 0,
                child: Text("More Apps 1",style: TextStyle(color: Colors.white),),

              ),
              const PopupMenuItem(
                value: 0,
                child: Text("More Apps 2",style: TextStyle(color: Colors.white),),

              ),
              const PopupMenuItem(
                value: 0,
                child: Text("Free Apps 1",style: TextStyle(color: Colors.white),),

              ),
              const PopupMenuItem(
                value: 0,
                child: Text("Free Apps 2",style: TextStyle(color: Colors.white),),

              ),
            ],
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder:(context) {
                  String title = name[index];
                  String img = arr[index];
                  return S2(title,index,img);
                },));
              },
              tileColor: const Color(0xff00818A),
              minVerticalPadding: 30,
              title: Text(
                name[index],
                // textAlign: TextAlign.right,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,

                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Color(0xffFDFDEB),
                ),
              ),
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(arr[index]))),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 60),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: arr.length),
    );
  }
}
