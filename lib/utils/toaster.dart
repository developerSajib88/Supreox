import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:supreox/utils/color_palates.dart';

class Toaster {
  static errorToast({required String? warningMessage}) {
    if (warningMessage != null && warningMessage.isNotEmpty) {
      Fluttertoast.showToast(
        msg: warningMessage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  static basicToast({required String? message}) {
    if (message != null && message.isNotEmpty) {
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: ColorPalates.deepOrange,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
