// ignore_for_file: annotate_overrides, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: Container(
                color: Colors.orange,
                child: Text('Hello World',
                    style: TextStyle(color: Colors.black)
                  )
                )
              )
            );
  }
}
