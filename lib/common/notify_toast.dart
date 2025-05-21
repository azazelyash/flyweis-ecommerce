import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class NotifyToast {
  static void showSuccess(BuildContext context, String message) {
    toastification.show(
      context: context,
      description: Text(message),
      title: const Text("Success"),
      style: ToastificationStyle.flat,
      type: ToastificationType.success,
      showProgressBar: true,
      alignment: Alignment.topCenter,
      progressBarTheme: const ProgressIndicatorThemeData(
        color: Colors.teal,
        linearTrackColor: Colors.white,
      ),
      autoCloseDuration: const Duration(seconds: 2),
    );
  }

  static void showError(BuildContext context, String message) {
    toastification.show(
      context: context,
      description: Text(message),
      title: const Text("Something went wrong"),
      style: ToastificationStyle.flat,
      type: ToastificationType.error,
      showProgressBar: true,
      alignment: Alignment.topCenter,
      progressBarTheme: const ProgressIndicatorThemeData(
        color: Colors.red,
        linearTrackColor: Colors.white,
      ),
      autoCloseDuration: const Duration(seconds: 2),
    );
  }
}
