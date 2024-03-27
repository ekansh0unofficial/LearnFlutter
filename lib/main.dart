// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
       home: Material(
        child : Center(
          child: Container(
            color: Colors.orange,
            child :Text('Hello World' , style : TextStyle(color: Colors.black))
          )
        )
       )
    );
  }
}

//understand Widgets as tree of composables
