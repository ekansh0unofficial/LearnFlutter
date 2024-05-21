// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dart/widgets/mydrawer.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          children:[ 
            SizedBox(height: 100,width: 100,),
            CircleAvatar(radius: 100,backgroundImage: AssetImage( "assets/images/IMG_20240203_181746.jpg")),
            
          ]
        )
                  
            
      ),
    );
  }
}
