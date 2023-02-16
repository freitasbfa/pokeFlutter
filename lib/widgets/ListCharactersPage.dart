import 'package:flutter/material.dart';
import 'package:poke_flutter/arguments/FormData.dart';

class ListCharactersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListCharactersPage();
}

class _ListCharactersPage extends State<ListCharactersPage> {
  var baseUrlImage =
      "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/00";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return Center(
            child: GestureDetector(
          child: Image.network("$baseUrlImage$index.png"),
          onTap: () {
            Navigator.pushNamed(
                context,
                "/charactersDetails",
                arguments: FormData(index));
          },
        ));
      }),
    ));
  }
}
