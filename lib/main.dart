import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appkids3/screen/splash_screen.dart'; // Importa la pantalla de carga

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Asegurar inicialización de widgets
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(AppKids());
  });
}


class AppKids extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppKids',
      home: SplashScreen(), // Muestra la pantalla de carga al inicio
    );
  }
}
