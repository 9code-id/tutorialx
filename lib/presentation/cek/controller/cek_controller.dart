// ignore: unused_import
import 'package:tutorialx/core.dart';

abstract class CekController {
  late CekState state;

  void initState({
    required Function init,
  });

  void onReady() {}
  void dispose() {}
  void initializeData();
  void increment();
  void decrement();
}