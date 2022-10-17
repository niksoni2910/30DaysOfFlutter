import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';

class Homepage extends StatelessWidget {
  final int day = 30;
  final String name = "development";
  @override
  Widget build(BuildContext context) {
    final DummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: DummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: DummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
