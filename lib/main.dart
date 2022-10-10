import 'package:flutter/material.dart';
import 'package:practice_ui_design/widgets/containers.dart';
import 'package:practice_ui_design/widgets/rects.dart';

void main() {
  runApp(Mydesign());
}

class Mydesign extends StatelessWidget {
  Mydesign({Key? key}) : super(key: key);
  // final parser = EmojiParser();
  // final relax = Emoji('relax', '😌');
  // final sleep = Emoji('sleep', '😴');
  // final rainbow = Emoji('sleep', '🌈');
  final List _texts = [
    ['All', '🌈'],
    ['Relax', '😌'],
    ['Sleep', '😴'],
    ['Focus', '😴'],
    ['a', '😴'],
    ['🌈', '😴'],
    ['a', '😴'],
    ['a', '😴'],
  ];
  final List _otexts = [
    'Reframe stress and relax',
    'Meditate with kids',
    'Relax your mind and body',
    'less gooo'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/night1.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
            ),
            body: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  '    Explore\nMeditation',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontFamilyFallback: <String>[
                      'Noto Sans CJK SC',
                      'Noto Color Emoji',
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _texts.length,
                      itemBuilder: (context, index) {
                        return MyContainers(child: _texts[index]);
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return MyRects(child: _otexts[index]);
                      }),
                )
              ],
            )),
      ),
    );
  }
}
