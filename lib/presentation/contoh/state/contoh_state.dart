import 'package:tutorialx/core.dart';
import 'package:flutter/material.dart';

class ContohState {
  ValueNotifier<bool> loading = ValueNotifier<bool>(false);
  ValueNotifier<bool> error = ValueNotifier<bool>(false);
  ValueNotifier<String> errorMessage = ValueNotifier<String>("");
  ValueNotifier<int> counter = ValueNotifier<int>(0);
}


