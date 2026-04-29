import 'package:duxbe_kds/shared/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:hancod_theme/hancod_theme.dart';
import 'package:toastification/toastification.dart';

class Alert {
  static void showSnackBar(
    String message, {
    SnackBarType type = SnackBarType.info,
  }) {
    AppRouter.rootContext.showSnackBar(message, type: type);
  }

  static void show({
    required String message,
    ToastificationType type = ToastificationType.info,
    Duration? duration,
  }) {
    if (message.isEmpty) return;
    toastification.show(
      description: Text(message),
      type: type,
      showProgressBar: false,
      dragToClose: true,
      alignment: Alignment.topCenter,
      autoCloseDuration: duration ?? const Duration(seconds: 3),
    );
  }

  static void success(String message, {Duration? duration}) {
    show(
      message: message,
      type: ToastificationType.success,
      duration: duration,
    );
  }

  static void warning(String message, {Duration? duration}) {
    show(
      message: message,
      type: ToastificationType.warning,
      duration: duration,
    );
  }

  static void info(String message, {Duration? duration}) {
    show(message: message, duration: duration);
  }

  static void error(String message, {Duration? duration}) {
    show(message: message, type: ToastificationType.error, duration: duration);
  }
}
