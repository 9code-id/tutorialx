// ignore: unused_import
import 'package:tutorialx/core.dart';

abstract class CendanaController {
  late CendanaState state;

  void initState({
    required Function init,
  });

  void onReady() {}
  void dispose() {}
  void initializeData();
  void increment();
  void decrement();
}
