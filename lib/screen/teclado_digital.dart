import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class DigitalKeyboardApp extends StatelessWidget {
  void playKeySound(String soundNumber) {
    final player = AudioPlayer();
    player.play(UrlSource('assets/piano/key$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required String soundNumber, required IconData icon, bool isBlackKey = false}) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.black),
            ),
          ),
          onPressed: () {
            playKeySound(soundNumber);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end, // Alinea el icono hacia la derecha
            children: [
              Transform.rotate(
                angle: -1.8, // Ajusta el ángulo de rotación hacia la izquierda
                child: Icon(
                  icon,
                  color: isBlackKey ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.png'), // Ruta de la imagen de fondo
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.white, soundNumber: 'C', icon: Icons.music_note),
                buildKey(color: Colors.black, soundNumber: 'Bc', icon: Icons.music_note, isBlackKey: true),
                buildKey(color: Colors.white, soundNumber: 'B', icon: Icons.music_note),
                buildKey(color: Colors.black, soundNumber: 'Ab', icon: Icons.music_note, isBlackKey: true),
                buildKey(color: Colors.white, soundNumber: 'A', icon: Icons.music_note),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(DigitalKeyboardApp());
}
