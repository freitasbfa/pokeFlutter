import 'package:flutter/material.dart';

class ListCharactersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListCharactersPage();
}

class _ListCharactersPage extends State<ListCharactersPage> {
  var baseUrlImage = "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/00";

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
                    showAlertDialog(context);
                  },
                )
            );

          }),
        )
    );
  }
}

showAlertDialog(BuildContext context)
{
  // configura o button
  Widget okButton = MaterialButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("Em desenvolvimento"),
    content: Text("Completando"),
    actions: [
      okButton,
    ],
  );

  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}
