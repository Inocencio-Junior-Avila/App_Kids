import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class BellsApp extends StatelessWidget {
  void playBellSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(UrlSource('assets/campanas/recorder$soundNumber.wav'));
  }

  Container buildBellKey({required Color color, required int soundNumber}) {
    return Container(
      height: 250,
      child: TextButton(
        onPressed: () {
          playBellSound(soundNumber);
        },
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: Icon(
                Icons.notifications_active,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
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
                buildBellKey(color: Colors.yellow, soundNumber: 1),
                buildBellKey(color: Colors.green, soundNumber: 2),
                buildBellKey(color: Colors.blue, soundNumber: 3),
                // Agrega más teclas de campana según sea necesario
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(BellsApp());
}
