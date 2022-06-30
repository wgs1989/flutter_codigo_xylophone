import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  AudioCache audioCache = AudioCache();

  void playNote(int note) {
    audioCache.play('audios/note$note.wav');
  }

  Widget buildKey({required Color colorKey, required int note}) {
    return Expanded(
      child: Container(
        color: colorKey,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Xylophone'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // buildKey(Colors.indigo, 1),
          // buildKey(Colors.pink, 2),
          // buildKey(Colors.green, 3),
          // buildKey(Colors.yellow, 4),
          buildKey(colorKey: Colors.red, note: 1),
          buildKey(colorKey: Colors.redAccent, note: 2),
          buildKey(colorKey: Colors.pink, note: 3),
          buildKey(colorKey: Colors.pinkAccent, note: 4),
          buildKey(colorKey: Colors.green, note: 5),
          buildKey(colorKey: Colors.greenAccent, note: 6),
          buildKey(colorKey: Colors.yellow, note: 7),
        ],
      ),
    );
  }
}
