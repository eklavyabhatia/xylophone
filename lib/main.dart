import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Instrument(),
        ),
      ),
    );
  }
}

class Instrument extends StatelessWidget {
  void playSound(int sound_no) {
    final player = AudioCache();
    player.play('note${sound_no}.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              playSound(1);
            },
            color: Colors.red,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              playSound(2);
            },
            color: Colors.orange,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              playSound(3);
            },
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              playSound(4);
            },
            color: Colors.green,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              playSound(5);
            },
            color: Colors.green.shade900,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              playSound(6);
            },
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              playSound(7);
            },
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
