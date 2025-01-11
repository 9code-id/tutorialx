import 'package:tutorialx/core.dart';

class LoginControllerImpl implements LoginController {
  @override
  late LoginState state;

  @override
  void initState({
    required Function init,
  }) {
    state = LoginState();
    init.call();
  }

  @override
  void onReady() {
    //handle onReady
  }

  @override
  void dispose() {
    //handle dispose
  }

  @override
  void initializeData() async {
    state.loading.value = true;
    await Future.delayed(const Duration(milliseconds: 2000));
    state.loading.value = false;
  }

  @override
  void increment() {
    state.counter.value++;
  }

  @override
  void decrement() {
    state.counter.value--;
  }
}

