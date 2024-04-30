import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalWidgets {
  static void snackBar(BuildContext context, {String? msg, Color? color}) {
    final snackBar = SnackBar(
      showCloseIcon: true,
      backgroundColor: color ?? Colors.red,
      behavior: SnackBarBehavior.floating,
      content: Text(
        '$msg',
        style: context.textTheme.titleSmall?.copyWith(color: Colors.white),
      ),
      duration: const Duration(seconds: 3), // Optional, default is 4 seconds
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
