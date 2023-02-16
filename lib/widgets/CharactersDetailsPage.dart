import 'package:flutter/material.dart';
import 'package:poke_flutter/arguments/FormData.dart';

class CharactersDetailsPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CharactersDetailsPage();

}

class _CharactersDetailsPage extends State<CharactersDetailsPage> {

  @override
  Widget build(BuildContext context) {
    var formData = ModalRoute.of(context)!.settings.arguments as FormData;

    return Scaffold(
      appBar: AppBar(
          title: Text("Pokedex")
      ),
      body: Center(
        child: Column(
          children: [
            Text(formData.number.toString())
          ],
        ),
      ),
    );
  }

}