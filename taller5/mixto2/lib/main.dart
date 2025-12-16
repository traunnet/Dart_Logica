import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => ColorModel(), child: const MyApp()),
  );
}

/// 1️⃣ ChangeNotifier
class ColorModel with ChangeNotifier {
  Color _color = Colors.blue;

  Color get color => _color;

  void cambiarColor(Color nuevoColor) {
    _color = nuevoColor;
    notifyListeners();
  }
}

/// 2️⃣ App principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Selector de Color')),
        body: Center(
          // 👈 centra todo
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// CUADRO DE COLOR (MÁS GRANDE)
              Consumer<ColorModel>(
                builder: (context, colorModel, _) {
                  return Container(
                    width: 160, // 👈 más grande
                    height: 160, // 👈 más grande
                    decoration: BoxDecoration(
                      color: colorModel.color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  );
                },
              ),

              const SizedBox(height: 40),

              /// BOTONES DE COLORES (MÁS VISIBLES)
              Wrap(
                spacing: 16,
                children:
                    [Colors.red, Colors.green, Colors.orange, Colors.purple]
                        .map(
                          (color) => ElevatedButton(
                            onPressed: () {
                              context.read<ColorModel>().cambiarColor(color);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: color,
                              minimumSize: const Size(44, 44), // 👈 más grandes
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            child: const SizedBox(),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
