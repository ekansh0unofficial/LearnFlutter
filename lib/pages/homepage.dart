// ignore_for_file: annotate_overrides, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_dart/widgets/mydrawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text("Hello World App") ,/* backgroundColor: Colors.deepPurple*/),
      drawer: MyDrawer(),
      body: Center(
          child: Container(
            //  color: Colors.orange,
              child:
                  Text('Hello World', /*style: TextStyle(color: Colors.black , fontSize: 30)*/))),
    );
  }
}


//replaced Material with Scaffold , as it gives more organised way to place widgets on the screen 
// it gives, Header : app bar , body , Footer : bottomsheet etc , and other component widgets 
  
