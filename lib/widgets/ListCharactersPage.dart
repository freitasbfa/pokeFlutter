import 'package:flutter/material.dart';
import 'package:poke_flutter/model/Character.dart';

class ListCharactersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListCharactersPage();
}

class _ListCharactersPage extends State<ListCharactersPage> {
  List<Character> characterList = [
    Character("Bulbasaur", "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png"),
    Character("Ivysaur", "https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png"),
    Character("Venusaur", "https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png"),
    Character("Charmander", "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png"),
    Character(" Charmeleon", "https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png"),
    Character("Charizard", "https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png"),
    Character("Squirtle", "https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png"),
    Character("Wartortle", "https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png"),
    Character("Blastoise", "https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png"),
    Character("Caterpie", "https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png"),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      children: List.generate(characterList.length, (index) {
        return Center(
            child: GestureDetector(
          child: Image.network(characterList[index].image),
          onTap: () {
            Navigator.pushNamed(
                context,
                "/charactersDetails",
                arguments: characterList[index]);
          },
        ));
      }),
    ));
  }
}
