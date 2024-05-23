// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.dmSans().fontFamily,
        appBarTheme: AppBarTheme(
          elevation: 2.0,
          backgroundColor: Colors.deepPurpleAccent,
          iconTheme: IconThemeData(color: Colors.white70),
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.aBeeZee(
              fontSize: 19, fontWeight: FontWeight.w800, color: Colors.black
            ),

          bodySmall:GoogleFonts.montserrat(
              fontSize: 13,fontWeight: FontWeight.w600, color: Colors.black
            ),
            
          bodyMedium: GoogleFonts.montserrat(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700
            ),

          titleLarge: GoogleFonts.cabin(
            fontSize: 40 , color : Color.fromARGB(255, 255, 208, 52) , fontWeight : FontWeight.w400,
          )  

        ),
      );
}
