import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  final List<Color> colors = [
    Colors.red, 
    Colors.orange, 
    Colors.yellow, 
    Colors.green, 
    Colors.teal, 
    Colors.blue, 
    Colors.purple
  ];

  void playSound(int soundNumber) {
    final player = AudioCache();

    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color}) => Expanded(
    child: InkWell(
      child: Container(color: color),
      enableFeedback: false,
      onTap: () {
        playSound(soundNumber);
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (var color in colors) 
                buildKey(soundNumber: colors.indexOf(color) + 1, color: color)
            ],
          ),
        ),
      ),
    );
  }
}
