import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteValue) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteValue.wav'));
  }

  Widget buildKey(int noteValue, Color colorValue) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: colorValue),
        onPressed: () {
          playSound(noteValue);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.indigo),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
