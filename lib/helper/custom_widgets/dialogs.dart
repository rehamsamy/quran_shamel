import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flash/flash_helper.dart';
import 'package:quran_shamel/helper/custom_widgets/progress_indicator.dart';

/// Pre-Configured global class to show `loading`, `Toasts`, `dialog`.
class Dialogs {
  // ignore: prefer_final_fields
  static Completer _completer = Completer();

  /// Shows a pre-configured loading.
  static void showLoading(BuildContext context) {
    showCustomDialog(
      context,
      dismissible: false,
      content: const CustomIndicator(),
    );
  }

  /// Dismisses any dialog on the screen.
  ///
  /// Note that if you want to dismiss somthing only to display
  /// a message Immediately this will be called automatically.
  static void dismiss() {
    if (!_completer.isCompleted) {
      _completer.complete();
      _completer = Completer();
    } else {
      _completer = Completer();
    }
  }

  /// Show a Custom provided dialog.
  ///
  /// Will Call `Dialogs.dismiss()` before.
  static void showCustomDialog(
    BuildContext context, {
    required Widget content,
    Completer? completer,
    bool dismissible = true,
  }) {
    dismiss();
    context.showFlash(
      barrierColor: const Color(0x80000000),
      barrierDismissible: dismissible,
      dismissCompleter: completer ?? _completer,
      transitionDuration: const Duration(milliseconds: 200),
      reverseTransitionDuration: const Duration(milliseconds: 200),
      builder: (context, controller) {
        return FadeTransition(
          opacity: controller.controller,
          child: content,
        );
      },
    );
  }
}
