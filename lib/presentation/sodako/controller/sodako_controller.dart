// ignore: unused_import
import 'package:tutorialx/core.dart';

abstract class SodakoController {
  late SodakoState state;

  void initState({
    required Function init,
  });

  void onReady() {}
  void dispose() {}
  void initializeData();
  void increment();
  void decrement();
}
