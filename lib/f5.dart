import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class f5 extends StatefulWidget {
  const f5({Key? key}) : super(key: key);

  @override
  _f5State createState() => _f5State();
}

class _f5State extends State<f5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9CE00),
        title: const Text("Typewriter Animated Text"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 30.0,
                  fontFamily: 'f22',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Discipline is the best tool'),
                    TypewriterAnimatedText('Design first, then code'),
                    TypewriterAnimatedText(
                        'Do not patch bugs out, rewrite them'),
                    TypewriterAnimatedText(
                        'Do not test bugs out, design them out'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}