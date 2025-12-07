import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const double profileSize = 150;
  static const Alignment profileAlignment = Alignment.center;
  static const Color appBarColor = Colors.greenAccent; 
  static const String appBarTitle = 'Juan Pablo - Mi Perfil';
  static const bool showLeadingIcon = true;
  static const bool showActionIcon = true;
  static final List<IconData> socialIcons = [
    Icons.facebook,
    Icons.email,
    Icons.chat,
  ];
  static final List<Color> socialColors = [
    Colors.blue,
    Colors.red,
    Colors.green,
  ];

  static final List<String> skills = ['Programación', 'Diseño', 'Ciclismo'];

  static const int gridColumns = 3;
  static final List<String> projectImages = [
    'proyectox.jpg',
    'planeta.jpg',
    'estudiante.jpeg',
    'minecraft.jpg',
    'bootstrap.jpg',
    'cuenta.png',
  ];

  static const Alignment versionAlign =
      Alignment.topRight;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil - Taller SENA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text(appBarTitle),
          leading: showLeadingIcon
              ? IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => print('Menu pressed'),
                )
              : null,
          actions: showActionIcon
              ? [
                  IconButton(
                    icon: Icon(Icons.person_add),
                    onPressed: () => print('Action pressed'),
                  ),
                ]
              : null,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('header.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    Positioned(
                      left: 12,
                      top: 12,
                      child: ElevatedButton(
                        onPressed: () => print('Contacto pulsado'),
                        child: Text('Contactar'),
                      ),
                    ),

                    Align(
                      alignment: profileAlignment,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Container(
                          width: profileSize,
                          height: profileSize,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 4),
                            image: DecorationImage(
                              image: AssetImage('estudiante.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: versionAlign,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            'version 1.0',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12),

                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 200, 236, 235),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Juan Pablo Hernandez',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Estudiante que le gusta la programación, la musica y los videojuegos de todas las epocas.',
                        style: TextStyle(fontSize: 14),
                      ),

                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // cambiar a center o end para otras variaciones
                        children: List.generate(socialIcons.length, (i) {
                          return IconButton(
                            icon: Icon(socialIcons[i]),
                            color: socialColors[i % socialColors.length],
                            iconSize: 30,
                            onPressed: () =>
                                print('Red social ${socialIcons[i]} pulsada'),
                          );
                        }),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 12),

                Container(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: skills.length,
                    itemBuilder: (context, index) {
                      final skill = skills[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 12,
                            ),
                            textStyle: TextStyle(fontSize: 14),
                          ),
                          onPressed: () =>
                              print('Habilidad seleccionada: $skill'),
                          child: Text(skill),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 12),

                Text(
                  'Proyectos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),

                Container(
                  height: 360,
                  child: GridView.count(
                    crossAxisCount: gridColumns,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    children: List.generate(projectImages.length, (index) {
                      final img = projectImages[index];
                      return GestureDetector(
                        onTap: () => print('Proyecto $index pulsado'),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(img),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),

                SizedBox(height: 12),

                Container(
                  height: 120,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: double.infinity,
                        width: double.infinity,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Pie de pagina',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}  
