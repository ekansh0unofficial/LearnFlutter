// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dart/homepage.dart';
import 'package:flutter_dart/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // home: Homepage(),
      // themeMode: ThemeMode.system,
      themeMode : ThemeMode.light,
       darkTheme:ThemeData(primaryColor: Colors.black12),
       theme: ThemeData(primaryColor: Colors.deepPurple),
       initialRoute: "/home",
       routes: {
        "/" :(context) => Homepage(),
        "/home" :(context) => Homepage(),
        "/login" :(context) => LoginPage()
       },
    );
  }
}

//thememode sets the theme of app , and Darktheme Widget and theme Widget define how to set that theme
//routes-> takes Map as a param (key , value)
// "/" : is used to define the default page , tho it can changed by using initialRoute method



//{} in a fcuntion parameters are used to declare default param @ required is used to represent non -Nullable params
void buyveggies( {@required carrrybag ,money = 100 } ){

}
