// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dart/widgets/mydrawer.dart';
import 'package:flutter_dart/widgets/mytheme.dart';

class ProfilePage extends StatelessWidget {
  var introduction =
      "As a 2nd-year IT engineering student, I have a beginner level in AppDev and Java development. Currently seeking an internship, I am eager to apply my skills and learn from experienced professionals.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: SafeArea(
          child: Center(
              child: Column(children: [
        SizedBox(
          height: 100,
          width: 100,
        ),
        CircleAvatar(
            radius: 100,
            backgroundImage:
                AssetImage("assets/images/IMG_20240203_181746.jpg")),
        SizedBox(
          height: 20,
          width: 20,
        ),
        Text(
          "EKANSH MITTAL",
          style: MyTheme.lightTheme.textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Email : ",
                      style: MyTheme.lightTheme.textTheme.bodyLarge),
                  Text("b422026@iiit-bh.ac.in",
                      style: MyTheme.lightTheme.textTheme.bodyLarge)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("GitHub : ",
                      style: MyTheme.lightTheme.textTheme.bodyLarge),
                  Text("ekansh0unofficial",
                      style: MyTheme.lightTheme.textTheme.bodyLarge)
                ],
              )
            ]),
        SizedBox(
          height: 200,
        ),
        Text(introduction , style : MyTheme.lightTheme.textTheme.bodySmall , textAlign: TextAlign.center
        ,),
      ]))),
    );
  }
}
