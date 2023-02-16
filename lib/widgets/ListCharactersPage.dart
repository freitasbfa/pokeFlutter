import 'package:flutter/material.dart';
import 'package:poke_flutter/model/Character.dart';

class ListCharactersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListCharactersPage();
}

class _ListCharactersPage extends State<ListCharactersPage> {
  List<Character> characterList = [
    Character(
        "Bulbasaur",
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png",
        0XFF89C893),
    Character(
        "Ivysaur",
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png",
        0XFF5ACDBD),
    Character(
        "Venusaur",
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png",
        0XFF3F9490),
    Character(
        "Charmander",
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png",
        0XFFA2D7D5),
    Character(
        " Charmeleon",
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png",
        0XFFCC6310),
    Character(
        "Charizard",
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png",
        0XFFF5E97E),
    Character(
        "Squirtle",
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png",
        0XFFF5E97E),
    Character(
        "Wartortle",
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png",
        0XFFA2D7D5),
    Character(
        "Blastoise",
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png",
        0XFF55A3AB),
    Character(
        "Caterpie",
        "https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png",
        0XFF405F26),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pokedex"),
          backgroundColor: const Color(0XFFd13d47),
          automaticallyImplyLeading: false,
        ),
        backgroundColor: const Color(0XFF2b292c),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(characterList.length, (index) {
              return GestureDetector(
                  child: Card(
                    color: Color(characterList[index].color),
                    child: Container(
                        alignment: Alignment.center,
                        child: Column(children: [
                          Image.network(characterList[index].image),
                        ])),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/charactersDetails",
                        arguments: characterList[index]);
                  });
            }),
          ),
        ));
  }
}
