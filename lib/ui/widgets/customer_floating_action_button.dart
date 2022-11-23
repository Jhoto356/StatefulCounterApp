import 'package:flutter/material.dart';

class CustomerFloatingActionButton {
  FloatingActionButton buildNewFloatingActionButton(Color background, VoidCallback toDoPress, IconData icon) {
    return FloatingActionButton(
      backgroundColor: background,
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      child: Icon(icon),
      onPressed: () {
        toDoPress();

      },

    );

  }

}