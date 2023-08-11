import 'package:flutter/material.dart';
import 'package:appkids3/screen/xilofono.dart';
import 'package:appkids3/screen/campanas.dart';
import 'package:appkids3/screen/teclado_digital.dart';
import 'package:appkids3/screen/pandereta.dart';
import 'package:appkids3/screen/maracas.dart';

class InstrumentSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back2.png'), // Ruta de la imagen de fondo
            fit: BoxFit.cover, // Ajustar la imagen al contenedor
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 80), // Espacio para el logo
              child: Image.asset('assets/logoAP.png'), // Reemplaza 'assets/logo.png' con la ruta de tu logo
            ),
            SizedBox(height: 1),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200, // Ancho del botón
                    height: 50, // Alto del botón
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => XylophoneApp()));
                      },
                      child: Text('Xilófono'),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 200, // Ancho del botón
                    height: 50, // Alto del botón
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BellsApp()));
                      },
                      child: Text('Campanas'),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 200, // Ancho del botón
                    height: 50, // Alto del botón
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DigitalKeyboardApp()));
                      },
                      child: Text('Teclado Digital'),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 200, // Ancho del botón
                    height: 50, // Alto del botón
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TambourineApp()));
                      },
                      child: Text('Pandereta'),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 200, // Ancho del botón
                    height: 50, // Alto del botón
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MaracasApp()));
                      },
                      child: Text('Maracas'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
