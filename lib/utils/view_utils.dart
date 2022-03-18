import 'package:flutter/material.dart';

class ViewUtils {
  static Widget buildConditionalWidget(
      {required bool condition, required Widget child}) {
    return condition ? child : const SizedBox(height: 0.0, width: 0.0);
  }

  static Widget buildConditionalTwoCasesWidget(
      {required bool condition,
      required Widget child,
      required Widget elseChild}) {
    return condition ? child : elseChild;
  }

  static showMessage(BuildContext context, message) {
    try {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 5),
        ),
      );
    } catch (error) {}
  }
}
