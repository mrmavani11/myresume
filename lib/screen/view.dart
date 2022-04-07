
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:myresume/screen/model/model.dart';
import 'package:myresume/screen/secondpage.dart';

class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  List<String> dividd = [
    "Emotional Shayari",
    "Love Shayari",
    "God Shayari",
    "Motivational Shayari",
    "Friendship Shayari",
    "Alone Shayari",
    "Anniversary Shayari",
    "Apnapan Shayari",
    "Dard Shayari",
    "Dhoka Shayari",
    "Dua Shayari",
    "Ehsaas Shayari",
    "Heart Touching",
    "Dhoka Shayari",
    "Dua Shayari",
    "Ehsaas Shayari",
    "Heart Touching"
  ];

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    int columnCount = 2;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: AnimationLimiter(
          child: GridView.count(
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            physics:
                const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            padding: EdgeInsets.all(_w / 60),
            crossAxisCount: columnCount,
            children: List.generate(
              model.divid.length,
              (int index) {
                return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 500),
                  columnCount: model.img.length,
                  child: ScaleAnimation(
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: FadeInAnimation(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Secondpage(index);
                            },
                          ));
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: _w / 30, left: _w / 60, right: _w / 60),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(model.img[index]),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 40,
                                    spreadRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 30,
                                margin: const EdgeInsets.only(
                                    left: 9, right: 9, bottom: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${model.divid[index]}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black45),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),

      // body: SafeArea(
      //   child: Card(
      //     child: GridView.builder(
      //       scrollDirection: Axis.vertical,
      //       itemCount: model.img.length,
      //       padding: const EdgeInsets.all(15),
      //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //         childAspectRatio: 1,
      //         crossAxisSpacing: 10,
      //         mainAxisSpacing: 10,
      //       ),
      //
      //       itemBuilder: (context, index) {
      //         return InkWell(
      //           onTap: () {
      //             Navigator.push(context, MaterialPageRoute(
      //               builder: (context) {
      //                 return Secondpage(index);
      //               },
      //             ));
      //           },
      //
      //             child: Stack(
      //                 children: [
      //             Container(
      //
      //             margin: EdgeInsets.only(
      //             bottom: _w / 30,
      //                 left: _w / 500,
      //                 right: _w / 500),
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage(
      //                     model.img[index],
      //                   ),fit: BoxFit.fill),
      //               color:  Colors.white,
      //               borderRadius: const BorderRadius.all(
      //                   Radius.circular(20)),
      //               boxShadow: [
      //                 BoxShadow(
      //                   color: Colors.black.withOpacity(0.1),
      //                   blurRadius: 40,
      //                   spreadRadius: 10,
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Align(
      //             alignment: Alignment.bottomCenter,
      //             child: Container(
      //               height: 30,
      //               margin: const EdgeInsets.only(
      //                   left: 6, right: 6, bottom: 5 ),
      //               decoration: BoxDecoration(
      //                   borderRadius:
      //                   BorderRadius.circular(10),
      //                   color: Colors.white),
      //               child: Container(
      //
      //                 alignment: Alignment.center,
      //                 child: Text(
      //                   "${model.divid[index]}",
      //                   style: const TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                       fontSize: 15,
      //                       color: Colors.black45),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ]));
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}
