import 'package:flutter/material.dart';
import 'app.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(
      DevicePreview(
        enabled: kIsWeb,
        builder: (context) => const MyApp())
      );
}
//gestion de vida de pantalla coon asyncValue: el trio dinamico, 
//adivina tu pensamiento, es un juego donde la persona piensa un numero la app pregunta en un rango del 1 al 100, el juego da un numero y dice este es tu numero y dices si tu numero es mayor o menor