import 'package:flutter/material.dart';
import 'package:poke_flutter/model/Character.dart';

class CharactersDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var formData = ModalRoute
        .of(context)!
        .settings
        .arguments as Character;

    return Scaffold(
      appBar: AppBar(
          title: Text("Pokedex")
      ),
      body: Center(
        child: Column(
          children: [
            Text(formData.nome)
          ],
        ),
      ),
    );
  }

}