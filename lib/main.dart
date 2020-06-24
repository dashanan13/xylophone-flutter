import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override

  Expanded buildKey({Color color, int soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundnumber.wav');
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Darsh's Xylophone"),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundnumber: 1),
              buildKey(color: Colors.yellow, soundnumber: 2),
              buildKey(color: Colors.white, soundnumber: 3),
              buildKey(color: Colors.blue, soundnumber: 4),
              buildKey(color: Colors.purple, soundnumber: 5),
              buildKey(color: Colors.green, soundnumber: 6),
              buildKey(color: Colors.deepOrangeAccent, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
