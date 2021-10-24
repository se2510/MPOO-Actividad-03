import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:actividad_3/pantalla_principal.dart';
import 'package:actividad_3/second_page.dart';

/*
'González García David Elias. Correo: pineco2510@gmail.com
González Gómez Alejandro. Correo: alejandrogogo02@gmail.com
Miramontes Carsolio Carla Ivette. Correo: carlitaivettemc@gmail.com
Sevilla Rivera Eder Eduardo. Correo: cevillaedgar1@gmail.com' 
!  No terminada, lo sentimos profe :(
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pantalla_principal(),
    );
  }
}
