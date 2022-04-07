import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class f3 extends StatefulWidget {
  const f3({Key? key}) : super(key: key);

  @override
  _f3State createState() => _f3State();
}

class _f3State extends State<f3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9CE00),
        title: const Text("Fade Animated Text"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 100, 0, 0),
              child: SizedBox(
                width: 250.0,
                height: 200,
                child: DefaultTextStyle(
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'f20'),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText('Satishkumar'),
                      FadeAnimatedText('ASHOK BHAI'),
                      FadeAnimatedText('Mavani'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}