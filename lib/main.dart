// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dart/pages/homepage.dart';
import 'package:flutter_dart/pages/loginpage.dart';
import 'package:flutter_dart/utils/my_routes.dart';
import 'package:flutter_dart/widgets/mytheme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // home: Homepage()
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme
     ,
    routes:{
      MyRoutes.intialRoute: (context) => Homepage(),
      MyRoutes.homeRoute : (context)  => Homepage(),
      MyRoutes.loginRoute :(context) => LoginPage() 
    }
    );
  }
}

//appbar theme can also be set from here
