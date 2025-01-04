import 'package:tutorialx/core.dart';

abstract class CondaController {
  late CondaState state;

  void initState({
    required Function init,
  });

  void onReady() {}
  void dispose() {}
  void initializeData();
  void increment();
  void decrement();
}
