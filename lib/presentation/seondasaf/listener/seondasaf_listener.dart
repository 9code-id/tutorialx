// ignore: unused_import
import 'package:tutorialx/core.dart';
import 'package:flutter/material.dart';

class SeondasafListener {
  final controller = sl<SeondasafController>();
  void handle(BuildContext context) {
    controller.state.error.addListener(() {
      controller.onReady();
      // handle loading state
      // you can handle navigation, dialog, snackbar, etc
      // based on the loading state
      if (controller.state.error.value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(controller.state.errorMessage.value),
          ),
        );
      }
    });
  }
}
