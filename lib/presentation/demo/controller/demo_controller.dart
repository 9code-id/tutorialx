import 'package:tutorialx/core.dart';

abstract class DemoController {
  late DemoState state;

  void initState({
    required Function init,
  });

  void onReady() {}
  void dispose() {}
  void initializeData();
  void increment();
  void decrement();
}