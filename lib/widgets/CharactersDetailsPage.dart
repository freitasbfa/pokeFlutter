import 'package:flutter/material.dart';
import 'package:poke_flutter/model/Character.dart';

class CharactersDetailsPage extends StatelessWidget {
  const CharactersDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var formData = ModalRoute.of(context)!.settings.arguments as Character;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokedex"),
        backgroundColor: Color(formData.color),
      ),
      body: Center(
        child: Column(
          children: [Text(formData.nome)],
        ),
      ),
    );
  }
}
