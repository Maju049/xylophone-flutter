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
  
  Expanded buildKey(int n1){
    int cv = 800 - n1*100;
    return Expanded(
                child: FlatButton(
                  color: Colors.blueGrey[cv],
                  onPressed: () {
                    clickplay(n1);
                  },
                  child: Text('sound$n1'),
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
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5), 
              buildKey(6), 
              buildKey(7), 
              buildKey(7), 
              ],
          ),
        ),
      ),
    );
  }
}
