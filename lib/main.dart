import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded builtKey({Color color, int soundNumber}){
    return Expanded(
        child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
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
              builtKey(color:Colors.red, soundNumber: 1),
              builtKey(color:Colors.orange, soundNumber: 2),
              builtKey(color:Colors.yellow, soundNumber: 3),
              builtKey(color:Colors.green, soundNumber: 4),
              builtKey(color:Colors.teal, soundNumber: 5),
              builtKey(color:Colors.blue, soundNumber: 6),
              builtKey(color:Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
