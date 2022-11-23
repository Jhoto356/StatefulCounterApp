import 'package:flutter/material.dart';

class AppBarByDefault extends AppBar {
  AppBarByDefault({Key? key}) : super(key: key);


  AppBar buildNewAppBar(String title, Color color) {
    return AppBar(
      title: Text(title),
      backgroundColor: color,

    );

  }


}
