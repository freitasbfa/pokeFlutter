import 'package:flutter/material.dart';
import 'package:poke_flutter/model/Character.dart';

class CharactersDetailsPage extends StatefulWidget {
  const CharactersDetailsPage({super.key});

  @override
  State<StatefulWidget> createState() => _CharactersDetailsPage();
}

class _CharactersDetailsPage extends State<CharactersDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final characterData = ModalRoute.of(context)!.settings.arguments as Character;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokedex"),
        backgroundColor: Color(characterData.color),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Color(characterData.color),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}