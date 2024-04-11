// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_dart/utils/my_routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  var onClick = false;

  final _formKey = GlobalKey<FormState>();

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

          //form
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      label: Text('Username'),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 2)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Cannot be empty";
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Cannot be empty";
                      } else if (value.length < 6) {
                        return "Password has to be atleast 6 characters long.";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 16),

          //animated button
          Material(
            borderRadius: BorderRadius.circular(onClick ? 100 : 8),
            color: Colors.deepPurpleAccent,
            child: InkWell(
              splashColor: Colors.white,
              onTap: () async {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    onClick = true;
                  });
                }
                await Future.delayed(Duration(milliseconds: 500));
                await Navigator.pushNamed(context, MyRoutes.homeRoute);
                setState(() {
                  onClick = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 30),
                height: 40,
                width: onClick ? 40 : 120,
                alignment: Alignment.center,
                child: onClick
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Center(
                        child: Text(
                          'Login ',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
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

//_formkey is a key that group multiple user entries into form
// we studyy about validators 
// a lil trickery to sort our login page problem 