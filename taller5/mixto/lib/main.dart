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
      home: ListaTareasScreen(),
    );
  }
}

class ListaTareasScreen extends StatefulWidget {
  const ListaTareasScreen({super.key});

  @override
  State<ListaTareasScreen> createState() => _ListaTareasScreenState();
}

class _ListaTareasScreenState extends State<ListaTareasScreen> {
  // Estado de las tareas
  bool tarea1 = true;
  bool tarea2 = true;
  bool tarea3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F4F8),
      appBar: AppBar(
        title: const Text('Lista de Tareas'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text('Estudiar Flutter'),
              value: tarea1,
              activeColor: Colors.purple,
              onChanged: (value) {
                setState(() {
                  tarea1 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Leer documentación'),
              value: tarea2,
              activeColor: Colors.purple,
              onChanged: (value) {
                setState(() {
                  tarea2 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Practicar código'),
              value: tarea3,
              activeColor: Colors.purple,
              onChanged: (value) {
                setState(() {
                  tarea3 = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
