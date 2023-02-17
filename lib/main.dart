import 'package:flutter/material.dart';
import 'package:poke_flutter/widgets/CharactersDetailsPage.dart';
import 'widgets/WelcomePage.dart';

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
      home: const WelcomePage(title: 'Pokedex'),
      routes: <String, WidgetBuilder>{
        "/charactersDetails": (BuildContext context) => CharactersDetailsPage()
      },
    );
  }
}