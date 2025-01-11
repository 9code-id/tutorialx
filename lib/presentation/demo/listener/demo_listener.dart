// ignore: unused_import
import 'package:tutorialx/core.dart';
import 'package:flutter/material.dart';

class DemoListener {
  final controller = sl<DemoController>();
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

    controller.state.counter.addListener(() {
      controller.onReady();
      // handle loading state
      // you can handle navigation, dialog, snackbar, etc
      // based on the loading state
      if (controller.state.counter.value == 5) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Sudah 5 ni"),
          ),
        );
      }
    });
  }
}
