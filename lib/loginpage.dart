// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{

      Widget build(BuildContext context){
        return Material(
          child : Center(
            child : Column(
              children: [
                Image.asset('assets/images/login_image.png'),

                SizedBox(height: 16,),
                
                Text('Login/Sign Up'),

                SizedBox(height: 16,),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          label: Text('Username'),
                          border: OutlineInputBorder(borderSide: BorderSide(width: 2))
                          )
                      ),
                      SizedBox(height : 8),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          label: Text('Password'),
                          border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                          ),
                        obscureText: true,
                        obscuringCharacter: '*',  
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),

                ElevatedButton(
                  onPressed: (){} ,
                  child: Text('Login'),
      
                )
            

              ],
            )
          )
        );
      }
}

//study about buttons , textbox , columns , image , adding text style
