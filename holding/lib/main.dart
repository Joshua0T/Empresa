import 'package:flutter/material.dart';
import 'package:holding/screen/menu.dart';  // Asegúrate de que esta ruta sea correcta

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Company Holding App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Menuoption(),  // Esta es la pantalla principal donde se muestra el menú de opciones
    );
  }
}
