import 'package:flutter/material.dart';

class ToastAndSnackBar {

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBarCustomer(BuildContext context, String message, Color background) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:
          const Text("My amazing message! O.o"),
          backgroundColor: background,

        )

    );

  }


}