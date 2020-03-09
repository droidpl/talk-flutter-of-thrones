import 'package:flutter/material.dart';
import 'package:flutter_of_thrones/models/gotcharacter.dart';

class GameOfThronesCell extends StatelessWidget {
  final GOTCharacter character;

  GameOfThronesCell({@required this.character});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(character.name),
      subtitle: Text("Is alive: ${character.alive}"),
      leading: character.imageUrl != null ? Image.network(character.imageUrl): null,
    );
  }
}
