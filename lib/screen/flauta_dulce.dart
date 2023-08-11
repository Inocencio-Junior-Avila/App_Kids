import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class RecorderApp extends StatelessWidget {
  void playRecorderSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(UrlSource('recorder$soundNumber.wav'));
  }

  Expanded buildRecorderKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playRecorderSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildRecorderKey(color: Colors.brown, soundNumber: 1),
              buildRecorderKey(color: Colors.brown, soundNumber: 2),
              buildRecorderKey(color: Colors.brown, soundNumber: 3),
              // Agrega más teclas de la flauta dulce según sea necesario
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(RecorderApp());
}
