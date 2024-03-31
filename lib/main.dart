// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dart/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
       home: Homepage()
    );
  }
}

//understand Widgets as tree of composables
//the above homepage content is preferablly written in seprate document
//replace the code with class Homepage
