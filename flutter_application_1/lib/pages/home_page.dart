import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

//day 11 we learned about context,constraints

class Homepage extends StatelessWidget {
  int day = 30;
  String name = "development";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tinder for sports"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $day days of flutter $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
