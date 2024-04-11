// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imagesource =
      "https://i.pinimg.com/564x/0d/64/98/0d64989794b1a4c9d89bff571d3d5842.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 8,
      semanticLabel: "Drawer",
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Ekansh"),
              accountEmail: Text("ekanshmittal01@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:NetworkImage(imagesource)
                ),
            ),
          ),

          ListTile(
              leading: Icon(Icons.home_filled),
              title: Text("Home", textScaler: TextScaler.linear(1.2),),
          ),
          
          ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile", textScaler: TextScaler.linear(1.2),),
          ),
          
          ListTile(
              leading: Icon(Icons.list),
              title: Text("Catalog", textScaler: TextScaler.linear(1.2),),
          ),
        ],
      ),
    );
  }
}

//let's create a drawer of the homePage
//ListView is used to display a list of objects , in scrollable