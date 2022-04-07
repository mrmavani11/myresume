
import 'package:flutter/material.dart';
import 'package:myresume/screen/addemo.dart';
import 'package:myresume/screen/bookmark.dart';
import 'package:myresume/screen/model/model.dart';
import 'package:share/share.dart';

class SettingPage extends StatefulWidget {
  int index2;

  SettingPage(this.index2);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(centerTitle: true,
          title: const Text("Settings",
              style: TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.bold)),
          backgroundColor: const Color(0XFFF3F1F5)),
      body: ListView.builder(
        itemCount: model.settings.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color(0XFFFFDDEE),
            margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0XFFF3EEFE),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),]
              ),
              child: ListTile(
                onTap: () {
               if(index==0){
                 Share.share(
                     "https://play.google.com/store/apps/developer?id=design");
               }
               if(index == 1){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const BookMark();
                  },));
               }
               if(index == 2){
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return const BookMark();
                 },));
               }
               if(index == 3){
                 addemo.showInterstitialAd();

               }
               if(index == 4){
                 addemo.showInterstitialAd();
               }
               if(index == 5){
                 addemo.showInterstitialAd();

               }
               if(index == 6){
                 addemo.createRewardedAd();
                 // Navigator.push(context, MaterialPageRoute(builder: (context) {
                 //   return BookMark();
                 // },));
               }

                },
                leading:model.ic[index],
                minVerticalPadding: 20,
                title: Text(model.settings[index],style: TextStyle(fontWeight: FontWeight.bold),),
                tileColor: Colors.black12,

              ),
            ),
          );
        },
      ),
    );
  }
}
