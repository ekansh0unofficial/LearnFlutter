// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
 static ThemeData get lightTheme => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily:  GoogleFonts.dmSans().fontFamily ,
        appBarTheme: AppBarTheme(
          elevation: 2.0,
          backgroundColor: Colors.deepPurpleAccent,
          iconTheme: IconThemeData(color: Colors.white70),
          titleTextStyle: TextStyle(color: Colors.white , fontWeight:FontWeight.w500 , fontSize: 22) 
        ),
        
        );
         
}