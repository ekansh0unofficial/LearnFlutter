// ignore_for_file: annotate_overrides, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dart/models/catalog.dart';
import 'package:flutter_dart/widgets/item_list_widget.dart';
import 'package:flutter_dart/widgets/mydrawer.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Duration(seconds: 2);
    var catalog = await rootBundle.loadString("assets/file/catalog.json");
    var decodedData = jsonDecode(catalog);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World App"), /* backgroundColor: Colors.deepPurple*/
      ),
      drawer: MyDrawer(),
      body: Center(
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)?Container(
              //  color: Colors.orange,
              child: ListView.builder(
                  itemCount: CatalogModel.items.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(item: CatalogModel.items[index]);
                  })):Center(child : CircularProgressIndicator())),
    );
  }
}
