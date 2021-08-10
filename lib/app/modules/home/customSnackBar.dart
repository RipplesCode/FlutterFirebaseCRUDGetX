import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackBar {
  static void showSnackBar({
    required BuildContext? context,
    required String title,
    required String message,
    required Color backgroundColor,
  }) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: backgroundColor,
        titleText: Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        messageText: Text(
          message,
          style: TextStyle(fontSize: 16),
        ),
        colorText: Colors.white,
        borderRadius: 8,
        margin: EdgeInsets.all(16));
  }
}
