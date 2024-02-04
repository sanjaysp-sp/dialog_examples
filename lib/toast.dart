import 'package:flutter/material.dart';

class ToastMessage {
  static void show(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      backgroundColor: Colors.blueGrey[900],
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      margin: EdgeInsets.all(16),
      duration: Duration(seconds: 3),
      action: SnackBarAction(
        label: 'DISMISS',
        textColor: Colors.white,
        onPressed: () {
          // Code to execute when the action is pressed
        },
      ),
    );

    // Find the ScaffoldMessenger in the widget tree and use it to show the SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
