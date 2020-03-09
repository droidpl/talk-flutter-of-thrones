import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_of_thrones/models/gotcharacter.dart';
import 'package:flutter_of_thrones/pages/got-list.dart';
import 'package:http/http.dart' as http;

const GOT_URL = "http://localhost:3000/";

class GameOfThronesPage extends StatefulWidget {
  @override
  _GameOfThronesPageState createState() => _GameOfThronesPageState();
}

class _GameOfThronesPageState extends State<GameOfThronesPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getGOTCharacters(),
      builder: (context, snapshot) {
        // Is loading
        if(!snapshot.hasData && !snapshot.hasError){
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        // We got an error
        if(snapshot.error != null){
          print(snapshot.error);
          return Center(
            child: Text("There was an error. Try it again"),
          );
        }
        // We got some data
        return GameOfThronesList(
          characters: snapshot.data
        );
      },
    );
  }

  Future<List<GOTCharacter>> getGOTCharacters() async {
    final response = await http.get(GOT_URL);
    if (response.statusCode == 200) {
      await Future.delayed(Duration(seconds: 3));
      List characters = json.decode(response.body);
      return characters.map((item) => GOTCharacter.fromJson(item)).toList();
    }
    throw new Exception('Could not load the characters');
  }
}
