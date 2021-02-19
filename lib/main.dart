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
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note${soundNo}.wav');
  }

  Widget buildKey(Color c, int soundNo) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNo);
        },
        color: c,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(Colors.red, 1),
        buildKey(Colors.orange, 2),
        buildKey(Colors.yellow, 3),
        buildKey(Colors.green, 4),
        buildKey(Colors.green.shade900, 5),
        buildKey(Colors.blue, 6),
        buildKey(Colors.purple, 7),
      ],
    );
  }
}
