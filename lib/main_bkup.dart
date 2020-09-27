import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {

  void clickplay(int soundnum) {
    final player = AudioCache();
    player.play('note$soundnum.wav');
  }

  Expanded  buildKey({Color colors, int buttonNum}) {
    //int cv = 800 - buttonNum*100;
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          clickplay(buttonNum);
        },
        child: Text('sound$buttonNum'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colors: Colors.redAccent, buttonNum: 1),
              buildKey(colors: Colors.blue, buttonNum: 2),
              buildKey(colors: Colors.deepPurpleAccent, buttonNum: 3),
              buildKey(colors: Colors.deepOrangeAccent, buttonNum: 4),
              buildKey(colors: Colors.tealAccent, buttonNum: 5),
              buildKey(colors: Colors.lime, buttonNum: 6),
              buildKey(colors: Colors.pinkAccent, buttonNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
