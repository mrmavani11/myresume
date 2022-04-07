import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class f4 extends StatefulWidget {
  const f4({Key? key}) : super(key: key);

  @override
  _f4State createState() => _f4State();
}

class _f4State extends State<f4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9CE00),
        title: const Text("Scale Animated Text"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 70.0,
                  fontFamily: 'f21',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    ScaleAnimatedText('Think'),
                    ScaleAnimatedText('Build'),
                    ScaleAnimatedText('Ship'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}