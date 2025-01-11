// ignore: unused_import
import 'package:tutorialx/core.dart';

abstract class CandaController {
  late CandaState state;

  void initState({
    required Function init,
  });

  void onReady() {}
  void dispose() {}
  void initializeData();
  void increment();
  void decrement();
}
