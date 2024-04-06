// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dart/utils/my_routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  var onClick = false;

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
          SizedBox(height: 16),
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
                    setState(() {});
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

          InkWell(
            onTap: () async {
              setState(() {
                onClick = true;
              });
              await Future.delayed(Duration(milliseconds: 40));
              Navigator.pushNamed(context, MyRoutes.homeRoute);

            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 30),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  //gradient: LinearGradient(colors: [Colors.white , Colors.deepPurple] , begin: Alignment.centerLeft , end : Alignment.centerRight),
                  color: Colors.deepPurpleAccent,
                 // borderRadius: BorderRadius.circular(12)
                  shape: onClick ?  BoxShape.circle : BoxShape.rectangle
                  ),
              child: onClick ? Icon(Icons.done) : Text(
                'Login ',
                textAlign: TextAlign.center,
              ),
            ),
          )

          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
          //   },
          //   child: Text('Login'),
          // )
        ],
      ),
    )));
  }
}

//we learn about Animated Conntainer
//to bring delay of shifting the page after the click , we use keyword async and call await keyword
//we will animate using onClick keyword