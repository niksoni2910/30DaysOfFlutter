import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
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
      drawer: Drawer(),
    );
  }
}
