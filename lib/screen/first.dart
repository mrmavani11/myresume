import 'dart:io';
import 'package:myresume/screen/addemo.dart';
import 'package:myresume/screen/firstpage.dart';
import 'package:myresume/screen/view.dart';
import 'package:share/share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class First1 extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const First1({Key? key, this.savedThemeMode}) : super(key: key);
  @override
  _First1State createState() => _First1State();
}

class _First1State extends State<First1> {


  BannerAd? _anchoredAdaptiveAd;
  bool _isLoaded = false;
  late Orientation _currentOrientation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _currentOrientation = MediaQuery.of(context).orientation;
    _loadAd();
  }

  /// Load another ad, disposing of the current ad if there is one.
  Future<void> _loadAd() async {
    await _anchoredAdaptiveAd?.dispose();
    setState(() {
      _anchoredAdaptiveAd = null;
      _isLoaded = false;
    });

    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
            MediaQuery.of(context).size.width.truncate());

    if (size == null) {
      print('Unable to get height of anchored banner.');
      return;
    }

    _anchoredAdaptiveAd = BannerAd(
      adUnitId: Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716',
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          print('$ad loaded: ${ad.responseInfo}');
          setState(() {
            // When the ad is loaded, get the ad size and use it to set
            // the height of the ad container.
            _anchoredAdaptiveAd = ad as BannerAd;
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('Anchored adaptive banner failedToLoad: $error');
          ad.dispose();
        },
      ),
    );
    return _anchoredAdaptiveAd!.load();
  }

  /// Gets a widget containing the ad, if one is loaded.
  ///
  /// Returns an empty container if no ad is loaded, or the orientation
  /// has changed. Also loads a new ad if the orientation changes.
  Widget _getAdWidget() {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (_currentOrientation == orientation &&
            _anchoredAdaptiveAd != null &&
            _isLoaded) {
          return Container(
            color: Colors.green,
            width: _anchoredAdaptiveAd!.size.width.toDouble(),
            height: _anchoredAdaptiveAd!.size.height.toDouble(),
            child: AdWidget(ad: _anchoredAdaptiveAd!),
          );
        }
        // Reload the ad if the orientation changes.
        if (_currentOrientation != orientation) {
          _currentOrientation = orientation;
          _loadAd();
        }
        return Container();
      },
    );
  }
  bool isMaterial = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 400,
          width: 400,
          //  margin: EdgeInsets.all(15),
          decoration: const BoxDecoration(

            color: Colors.black,
            image: DecorationImage(
                image: AssetImage("image/shayimg/Romantic Getaway-bro.png"),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 350,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          ),
        ),
        Center(
          child: Container(
            //padding: const EdgeInsets.only(top: 40, bottom: 40),
            margin: const EdgeInsets.only(right: 150, top: 100),
            width: 130,
            height: 170,
            child: TextButton(
                onPressed: () {
                  Share.share(
                      "https://play.google.com/store/apps/developer?id=design");
                },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 30),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "image/shayimg/share.png"))),
                  ),
                  const Text(
                    "Share",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              )),
            decoration: BoxDecoration(
              color: const Color(0XFFEEEEEE),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        Center(
          child: Container(
            // padding: const EdgeInsets.only(top: 40, bottom: 40),
            margin: const EdgeInsets.only(left: 150, top: 150),
            width: 130,
            height: 170,
            child: TextButton(
              onPressed: () {
                addemo.showInterstitialAd();

                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return  View();
                  },
                ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 30),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "image/shayimg/view-details.png"))),
                  ),
                  const Text(
                    "View",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: const Color(0XFFFFE3E3),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            //  padding: const EdgeInsets.only(top: 20, bottom: 20),
            margin: const EdgeInsets.only(right: 150, top: 490),
            width: 130,
            height: 170,
            child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        actions: [
                          TextButton(
                            onPressed: () {
                              addemo.showRewardedInterstitialAd();
                            },
                            child: const Text("BUY PRO"),
                            style: TextButton.styleFrom(
                                primary: Colors.black87,
                                backgroundColor: const Color(0XFFF3E4FC),
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("NO THANKS"),
                            style: TextButton.styleFrom(
                                primary: Colors.black87,
                                backgroundColor: const Color(0XFFF3E4FC),
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                          ),
                        ],
                        title: const Text(
                          "Benifits of Pro version",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        content: const Text(
                            '''1.No Ads\n2.NO wait time for hint and skip\n3. Hint for every level\n4. Solution for every level'''),
                      );
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: const Icon(
                        Icons.workspace_premium,
                        size: 55,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "BUY\nPRO",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                )),
            decoration: BoxDecoration(
              color: const Color(0XFFF4BBBB),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Center(
          child: Container(
            // padding: const EdgeInsets.only(top: 20, bottom: 20),
            margin: const EdgeInsets.only(
              left: 150,
              top: 550,
            ),
            width: 130,
            height: 170,
            child: TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: const Icon(
                          Icons.brightness_6_outlined,
                          size: 50,
                          color: Colors.black,
                        )),
                    const Text(
                      "DARK",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                )),
            decoration: BoxDecoration(
              color: const Color(0XFFE8E8A6),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        // Positioned(
        //     bottom: 10,
        //     child:_getAdWidget())
      ],
    ));
  }
}

// _buildDrawer() {
//   const String image = 'assets/images/annivers.jpg';
//   return ClipPath(
//     clipper: OvalRightBorderClipper(),
//     child: Drawer(
//       child: Container(
//         padding: const EdgeInsets.only(left: 16.0, right: 40),
//         decoration: const BoxDecoration(
//             color: Colors.white,
//             boxShadow: [BoxShadow(color: Colors.black45)]),
//         width: 300,
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 Container(
//                   alignment: Alignment.centerRight,
//                   child: IconButton(
//                     icon: const Icon(
//                       Icons.power_settings_new,
//                       color: Colors.white,
//                     ),
//                     onPressed: () {},
//                   ),
//                 ),
//                 Container(
//                   height: 90,
//                   alignment: Alignment.center,
//                   decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       gradient: LinearGradient(
//                           colors: [Colors.orange, Colors.deepOrange])),
//                   child: const CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage(image),
//                   ),
//                 ),
//                 const SizedBox(height: 5.0),
//                 const Text(
//                   "Flutter Animation Zone",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 const Text(
//                   "@zone",
//                   // style: TextStyle(color: active, fontSize: 16.0),
//                 ),
//                 const SizedBox(height: 40.0),
//                 _buildRow(Icons.home, "Home"),
//                 _buildDivider(),
//                 _buildRow(Icons.person_pin, "My profile"),
//                 _buildDivider(),
//                 _buildRow(Icons.message, "Messages", showBadge: true),
//                 _buildDivider(),
//                 _buildRow(Icons.notifications, "Notifications",
//                     showBadge: true),
//                 _buildDivider(),
//                 InkWell(onTap: () {
//
//                 },child: _buildRow(Icons.settings, "Settings")),
//                 _buildDivider(),
//                 _buildRow(Icons.email, "Contact us"),
//                 _buildDivider(),
//                 _buildRow(Icons.info_outline, "Help"),
//                 _buildDivider(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
//
// Divider _buildDivider() {
//   return const Divider(
//      color: Colors.white,
//   );
// }
//
// Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
//   // final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
//   return Container(
//     padding: const EdgeInsets.symmetric(vertical: 5.0),
//     child: Row(
//       children: [
//         Icon(
//           icon,
//           // color: active,
//         ),
//         const SizedBox(width: 10.0),
//         Text(
//           title,
//           // style: tStyle,
//         ),
//         const Spacer(),
//         if (showBadge)
//           Material(
//             color: Colors.deepOrange,
//             elevation: 5.0,
//             shadowColor: Colors.red,
//             borderRadius: BorderRadius.circular(5.0),
//             child: Container(
//               width: 25,
//               height: 25,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: Colors.deepOrange,
//                 borderRadius: BorderRadius.circular(5.0),
//               ),
//               child: const Text(
//                 "5",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 12.0,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//       ],
//     ),
//   );
// }
//
//
// class OvalRightBorderClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, 0);
//     path.lineTo(size.width - 40, 0);
//     path.quadraticBezierTo(
//         size.width, size.height / 4, size.width, size.height / 2);
//     path.quadraticBezierTo(size.width, size.height - (size.height / 4),
//         size.width - 40, size.height);
//     path.lineTo(0, size.height);
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
