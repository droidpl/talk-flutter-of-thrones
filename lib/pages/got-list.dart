import 'package:flutter/material.dart';
import 'package:flutter_of_thrones/models/gotcharacter.dart';
import 'package:flutter_of_thrones/pages/got-cell.dart';

class GameOfThronesList extends StatelessWidget {
  final List<GOTCharacter> characters;

  GameOfThronesList({@required this.characters});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) => GameOfThronesCell(character: characters[index],));
  }
}
