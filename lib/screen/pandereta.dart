import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:sensors_plus/sensors_plus.dart';

class TambourineApp extends StatefulWidget {
  @override
  _TambourineAppState createState() => _TambourineAppState();
}

class _TambourineAppState extends State<TambourineApp> {
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
      // Detecta sacudidas comprobando los valores del acelerómetro
      if (event.x.abs() > 12 || event.y.abs() > 12 || event.z.abs() > 12) {
        playTambourineSound();
      }
    });
  }

  void playTambourineSound() async {
    String soundPath = 'assets/pandereta/tambourine.wav';
    await player.play(UrlSource(soundPath));
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sacude para tocar la pandereta',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(height: 20), // Espacio entre el texto y la imagen
                  Image.asset('assets/pandereta.png'), // Ruta de la imagen de la maraca
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}

void main() {
  runApp(TambourineApp());
}
