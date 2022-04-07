import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class f6 extends StatefulWidget {
  const f6({Key? key}) : super(key: key);

  @override
  _f6State createState() => _f6State();
}

class _f6State extends State<f6> {
  List<MaterialColor> colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  TextStyle colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'f23',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9CE00),
        title: const Text("ColorizeAnimated Text"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 250.0,
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Larry Page',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                  ColorizeAnimatedText(
                    'Bill Gates',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                  ColorizeAnimatedText(
                    'Steve Jobs',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
