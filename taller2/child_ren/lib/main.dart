//Uso de child y children en Flutter
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Aplicación Flutter',
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Primera Pantalla'),
        backgroundColor: Colors.indigo,
      ),
      
      body: Center(
        child: Container(
          color: Colors.lime.shade100,
          padding: const EdgeInsets.all(20.0),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              ElevatedButton(onPressed: () {}, child: const Text('Boton 1')),
              const SizedBox(height: 10), // Espacio entre botones
              ElevatedButton(onPressed: () {}, child: const Text('Boton 2')),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: const Text('Boton 3')),
            ],
          ),
        ),
      ),
    );
  }
}