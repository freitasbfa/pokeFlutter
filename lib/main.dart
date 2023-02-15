import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Pokedex'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var colorBackground = const Color(0XFF2c3151);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
              alignment: Alignment.topLeft,
              child: const Text(
                "Welcome to",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
              alignment: Alignment.topLeft,
              child: const Text(
                "Pokedex",
                style: TextStyle(
                  color: Color(0XFFf2bc11),
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Image.asset('imagens/home_image.png'),
            )
          ],
        ),
      ),
    );
  }
}
