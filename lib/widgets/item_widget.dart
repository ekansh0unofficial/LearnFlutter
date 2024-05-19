// ignore_for_file: use_super_parameters, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_dart/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({key, required this.item})
    //  : assert(item != null),
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 8,
      ),
      Card(
        child: ListTile(
          leading: Image.network(
            item.image,
            width: 122,
            height: 122,
          ),
          title: Text(item.name ,style: TextStyle(color: Colors.white),),
          subtitle: Text("${item.desc}",style: TextStyle(color: Colors.white70) ),
          trailing: Text("\$${item.price}",style: TextStyle(color: Colors.white70)),
          tileColor: hexToColor(item.color),
          
        ),
      ),
    ]);
  }
}


Color hexToColor(String hexString) {
  hexString = hexString.replaceAll('#', '');
  if (hexString.length == 6) {
    hexString = 'FF' + hexString; // Add 'FF' to the beginning for the alpha value
  }
  return Color(int.parse(hexString, radix: 16));
}
