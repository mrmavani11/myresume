import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class f1 extends StatefulWidget {
  const f1({Key? key}) : super(key: key);

  @override
  _f1State createState() => _f1State();
}

class _f1State extends State<f1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9CE00),
        title: const Text("Rotate Animated Text"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(width: 20.0, height: 100.0),
            const Text(
              'Be',
              style: TextStyle(
                fontSize: 43.0,
                color: Colors.pink,
              ),
            ),
            const SizedBox(width: 20.0, height: 100.0),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 40.0,
                color: Colors.lightBlue,
                fontFamily: 'f18',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText('AWESOME'),
                  RotateAnimatedText('OPTIMISTIC'),
                  RotateAnimatedText('DIFFERENT'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}