import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';

class Dialogs {
  // ignore: prefer_final_fields
  static Completer _completer = Completer();

  /// Shows a pre-configured loading.
  static void showLoading() {
    dismiss();
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.custom
      ..contentPadding = const EdgeInsets.all(20)
      ..maskType = EasyLoadingMaskType.black
      ..backgroundColor = Colors.white.withOpacity(0.1)
      ..indicatorColor = Color(0xFF06BFB6)
      ..textColor = Colors.white
      ..userInteractions = false
      ..dismissOnTap = false;

    EasyLoading.show();
  }

  static void dismiss() {
    if (!_completer.isCompleted) {
      _completer.complete();
      _completer = Completer();
    }
    EasyLoading.dismiss();
  }
}
