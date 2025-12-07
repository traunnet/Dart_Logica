import 'package:flutter/material.dart';

class MyListManager extends StatefulWidget {
  const MyListManager({super.key});

  @override
  State<MyListManager> createState() {
    print('CICLO DE VIDA: createState() ejecutado.');
    return _MyListManagerState();
  }
}

class _MyListManagerState extends State<MyListManager> {
  // Lista inicial (sigue manteniendo el estado)
  List<String> items = ['Elemento A', 'Elemento B', 'Elemento C'];
  int itemCounter = 4;

  @override
  void initState() {
    super.initState();
    print('CICLO DE VIDA: initState() ejecutado.');
  }

  void _addItem() {
    setState(() {
      items.add('Elemento $itemCounter');
      itemCounter++;
      print('ACCIÓN: Elemento agregado. Total: ${items.length}');
    });
  }

  void _removeItem() {
    if (items.isNotEmpty) {
      setState(() {
        items.removeLast();
        print('ACCIÓN: Elemento eliminado. Total: ${items.length}');
      });
    } else {
      print('ADVERTENCIA: No hay elementos para eliminar.');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('CICLO DE VIDA: build() ejecutado.');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Estático'),
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Total de Elementos:', style: TextStyle(fontSize: 20)),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 40),
              child: Text(
                '${items.length}',
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ElevatedButton.icon(
              onPressed: _addItem,
              icon: const Icon(Icons.add),
              label: const Text(
                'Agregar Elemento',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: _removeItem,
              icon: const Icon(Icons.remove),
              label: const Text(
                'Eliminar Último',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.red.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
