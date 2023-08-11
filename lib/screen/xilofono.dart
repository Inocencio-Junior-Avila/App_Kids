import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    String soundPath = 'assets/xilofono/note$soundNumber.wav';
    await player.play(UrlSource(soundPath));
    await player.dispose();
  }

  Expanded buildKey({required Color color, required int soundNumber, required double buttonSize, required IconData icon}) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), // Espacio vertical y horizontal
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            maximumSize: Size(double.infinity, buttonSize), // Tamaño mínimo del botón
          ),
          onPressed: () {
            playSound(soundNumber);
          },
          child: Icon(
            icon,
            color: Colors.white,
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
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Fondo de imagen
              Image.asset(
                'assets/back.png', // Ruta de tu imagen de fondo
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(color: Colors.red, soundNumber: 1, buttonSize: 100, icon: Icons.auto_fix_high),
                  buildKey(color: Colors.orange, soundNumber: 2, buttonSize: 120, icon: Icons.auto_fix_high),
                  buildKey(color: Colors.yellow, soundNumber: 3, buttonSize: 140, icon: Icons.auto_fix_high),
                  buildKey(color: Colors.green, soundNumber: 4, buttonSize: 160, icon: Icons.auto_fix_high),
                  buildKey(color: Colors.blue, soundNumber: 5, buttonSize: 180, icon: Icons.auto_fix_high),
                  buildKey(color: Colors.indigo, soundNumber: 6, buttonSize: 200, icon: Icons.auto_fix_high),
                  buildKey(color: Colors.purple, soundNumber: 7, buttonSize: 220, icon: Icons.auto_fix_high),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(XylophoneApp());
}
