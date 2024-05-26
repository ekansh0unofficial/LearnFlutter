// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import, use_key_in_widget_constructors, await_only_futures

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dart/models/catalog.dart';
import 'package:flutter_dart/widgets/item_grid_widget.dart';
import 'package:flutter_dart/widgets/mygrid.dart';

class CatalogPage extends StatefulWidget {
  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {

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
        
        body: CatalogModel.items != null && CatalogModel.items.isNotEmpty ?  
        GridView.builder(
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 12 , mainAxisSpacing: 12),
              itemBuilder: (context, index) => MyGrid( item : CatalogModel.items[index]),
              itemCount: CatalogModel.items.length,
        ):Center(child : CircularProgressIndicator())
    );
  }
}
