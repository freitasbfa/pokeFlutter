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
              padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
              child: Image.asset('imagens/image_home.png'),
            ),
            MaterialButton(onPressed: () {
              setState(() {

              });
            },
              minWidth: 450,
              color: const Color(0XFFf2bc11),
              child: const Text(
                "Create Account",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                        "Already have an account?",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                   SizedBox(
                     width: 5,
                   ),
                   Text(
                        "Login",
                      style: TextStyle(
                        color: Color(0XFFf2bc11),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
