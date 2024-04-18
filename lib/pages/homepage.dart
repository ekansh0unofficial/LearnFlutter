// ignore_for_file: annotate_overrides, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_dart/models/catalog.dart';
import 'package:flutter_dart/widgets/item_widget.dart';
import 'package:flutter_dart/widgets/mydrawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World App"), /* backgroundColor: Colors.deepPurple*/
      ),
      drawer: MyDrawer(),
      body: Center(
          child: Container(
              //  color: Colors.orange,
              child: ListView.builder(
                  itemCount: CatalogModel.items.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(item: CatalogModel.items[index]);
                  }))),
    );
  }
}

//listView , builder , ItemBuilder , Returns MyItemWidget
//learning about assert (TESTING) , constructors of a class
  
