// ignore: unused_import
import 'package:tutorialx/core.dart';

abstract class OtherController {
  late OtherState state;

  void initState({
    required Function init,
  });

  void onReady() {}
  void dispose() {}
  void initializeData();
  void increment();
  void decrement();
}
