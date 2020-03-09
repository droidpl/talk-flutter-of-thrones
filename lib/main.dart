import 'package:flutter/material.dart';
import 'package:flutter_of_thrones/pages/got-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Game of thrones application"),
        ),
        body: GameOfThronesPage(),
      ),
    );
  }
}
