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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.blueGrey[800],
                  onPressed: () {
                    clickplay(1);
                  },
                  child: Text('sound1'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blueGrey[700],
                  onPressed: () {
                    clickplay(2);
                  },
                  child: Text('sound2'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blueGrey[600],
                  onPressed: () {
                    clickplay(3);
                  },
                  child: Text('sound3'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blueGrey[500],
                  onPressed: () {
                    clickplay(4);
                  },
                  child: Text('sound4'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blueGrey[400],
                  onPressed: () {
                    clickplay(5);
                  },
                  child: Text('sound5'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blueGrey[300],
                  onPressed: () {
                    clickplay(6);
                  },
                  child: Text('sound6'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
