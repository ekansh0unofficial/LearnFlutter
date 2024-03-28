// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dart/homepage.dart';
import 'package:flutter_dart/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // home: Homepage()
      themeMode: ThemeMode.light,
      theme: ThemeData(primaryColor: Colors.deepPurple),
      darkTheme: ThemeData(primaryColor: Colors.black12),
    routes:{
      "/": (context) => Homepage(),
      "/home" : (context)  => Homepage(),
      "/login " :(context) => LoginPage() 
    }
    );
  }
}

//themes are used to set the theme of the app when used in the ight mode
// it's corresponding darkTheme is used to theme App in DarkmOde
//routes are used to control the structure of the application 
// "/" is the default homepage , but this can be changed using intialroute

void bringveggies({int money = 100 , @required carrybag}){
     //{} are used to define optional params which have some default values , if there is no default val
     // then @required is used
}