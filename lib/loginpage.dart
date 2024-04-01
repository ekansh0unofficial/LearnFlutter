// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dart/utils/my_routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('assets/images/login_image.png'),
          SizedBox(
            height: 16,
          ),
          Text('Login/Sign Up'),
          SizedBox(
            height: 16,
          ),
          Text('Mr./Ms./Mrs. $name'),
          SizedBox(height :16),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    label: Text('Username'),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  ),
                  onChanged: (value) {
                    name = value; 
                    setState(() {  });
                  },
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    label: Text('Password'),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  ),
                  obscureText: true,
                  obscuringCharacter: '*',
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: Text('Login'),
          )
        ],
      ),
    )));
  }
}

//after learning about navigator and routes 

//we learn about stateful wwidgets 
//Once we convert a stateless Class to stateful Class 
//a private class is created in the program which is our stateless class 
//a State function converts the private class data into a StateFul class
// '_' before an object name means it is private