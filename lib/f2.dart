import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class f2 extends StatefulWidget {
  const f2({Key? key}) : super(key: key);

  @override
  _f2State createState() => _f2State();
}

class _f2State extends State<f2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF9CE00),
        title: const Text("Typer Animated Text"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: SizedBox(
                width: 250.0,
                height: 100,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    color: Colors.brown,
                    fontSize: 30.0,
                    fontFamily: 'f19',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('It is not enough to do your best,'),
                      TyperAnimatedText('you must know what to do,'),
                      TyperAnimatedText('and then do your best'),
                      TyperAnimatedText('- W.Edwards Deming'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}