// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_super_parameters, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dart/models/catalog.dart';
import 'package:google_fonts/google_fonts.dart';

class MyGrid extends StatelessWidget {
  final Item item;

  const MyGrid({required this.item, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts
      .cabin(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16,  ),
      child:InkWell(onTap: ,child:Container(
        decoration: BoxDecoration(color: hexToColor(item.color) , borderRadius: BorderRadius.circular(16)) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(child:Text(item.name),padding: EdgeInsets.all(6)),
        Expanded(child: Image.network(item.image, fit : BoxFit.fitHeight, width: double.infinity,),  ),
        Container( alignment: Alignment.centerRight , child: Text("${item.price}" , textAlign: TextAlign.end),padding: EdgeInsets.all(12),)
      ],
    ))));
  }
}

Color hexToColor(String hexString) {
  hexString = hexString.replaceAll('#', '');
  if (hexString.length == 6) {
    hexString = 'FF' + hexString; // Add 'FF' to the beginning for the alpha value
  }
  return Color(int.parse(hexString, radix: 16));
}
