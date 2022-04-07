import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myresume/First.dart';
import 'package:myresume/screen/addemo.dart';
import 'package:myresume/screen/first.dart';
import 'package:myresume/screen/model/model.dart';
import 'package:myresume/screen/settingpage.dart';
import 'bookmark.dart';
import 'google_ads/app_open_ad_manager.dart';
import 'view.dart';

class firstpage1 extends StatefulWidget {
  const firstpage1({Key? key}) : super(key: key);

  @override
  _firstpage1State createState() => _firstpage1State();
}

class _firstpage1State extends State<firstpage1> {
  List<Widget> list = [
    First1(),
    View(),
    BookMark(),
    SettingPage(model.settings.length)
  ];

  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    //  addemo.createInterstitialAd();
    addemo.createInterstitialAd();


    addemo.createRewardedAd();
    addemo.createRewardedInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: list[_selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(_width * .05),
        height: _width * .140,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ],
          borderRadius: BorderRadius.circular(40),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: _width * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
                HapticFeedback.lightImpact();
                addemo.showInterstitialAd();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == _selectedIndex ? _width * .20 : _width * .20,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(right: 20),
                    height: index == _selectedIndex ? _width * .12 : 0,
                    width: index == _selectedIndex ? _width * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == _selectedIndex
                          ? Color(0XFFF3E4FC)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == _selectedIndex ? _width * .31 : _width * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == _selectedIndex ? _width * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == _selectedIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == _selectedIndex ? "" : '',
                              style: const TextStyle(
                                color: Color(0XFFF0D9FF),
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == _selectedIndex ? _width * .03 : 20,
                          ),
                          Icon(
                            listOfIcons[index],
                            size: _width * .076,
                            color: index == _selectedIndex
                                ? const Color(0XFF11324D)
                                : Colors.black38,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.menu,
    Icons.bookmark,
    Icons.settings_rounded,
  ];

  List<String> listOfTitles = [
    'Home',
    'Favorite',
    'BMark'
        'Settings',
  ];
// bottomNavigationBar: BottomNavigationBar(
//   items:  const <BottomNavigationBarItem>[
//     BottomNavigationBarItem(backgroundColor: Color(0XFFB2B8A3),
//       icon: Icon(Icons.home, color: Colors.black87,),
//       label: 'Home',
//       tooltip: 'Home'
//     ),
//      BottomNavigationBarItem(backgroundColor: Color(0XFFB2B8A3),
//       icon: Icon(Icons.menu, color: Colors.black87),
//       label: 'Menu',
//       tooltip: 'Menu'
//     ),
//      BottomNavigationBarItem(backgroundColor: Color(0XFFB2B8A3),
//       icon: Icon(Icons.bookmark, color: Colors.black87),
//       label: 'Bookmark',
//       tooltip: 'Bookmark'
//     ),
//      BottomNavigationBarItem(backgroundColor: Color(0XFFB2B8A3),
//       icon: Icon(Icons.settings, color: Colors.black87),
//       label: 'Setting',
//       tooltip: 'Setting'
//     ),
//   ],
//   currentIndex: _selectedIndex,
//   selectedItemColor: Colors.black87,
//   onTap: (value) {
//     setState(() {
//       _selectedIndex = value;
//     });
//   },
//

}
