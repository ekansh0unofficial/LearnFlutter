import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dart/models/catalog.dart';


class DetailsPage extends StatelessWidget {
  
  final Item item;

  const DetailsPage({required this.item,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.network(item.image)

    );
  }
}
