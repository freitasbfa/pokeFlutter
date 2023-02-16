import 'package:flutter/material.dart';
import 'package:poke_flutter/widgets/ListCharactersPage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key, required this.title});

  final String title;

  @override
  State<WelcomePage> createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  var colorBackground = const Color(0XFF2c3151);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
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
                    fontSize: 30),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                child: Image.asset('assets/images/image_home.png'),
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListCharactersPage()),
                  );
                });
              },
              minWidth: 450,
              color: const Color(0XFFf2bc11),
              child: const Text(
                "Create Account",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListCharactersPage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white),
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
