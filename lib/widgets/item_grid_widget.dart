import 'package:flutter/material.dart';
import 'package:flutter_dart/models/catalog.dart';

class ItemGrid extends StatelessWidget {

  
    final Item item;
    const ItemGrid({key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: Text(item.name , style: TextStyle(backgroundColor: Color.fromRGBO(134, 103, 103, 0.263)),),
      child: Image.network(item.image ,),
    );
  }
}
