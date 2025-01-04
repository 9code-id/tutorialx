ini adalah contoh templating yang saya buat.
Buatkan saya versi Getx?

@@@ penting jgn diubah
--- juga penting sebagai penanda batas bawah

@@@lib/presentation/hyper_example/view/hyper_example_view.dart
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HyperExampleView extends StatefulWidget {
  const HyperExampleView({super.key});

  Widget build(context, HyperExampleController controller) {
    final state = controller.state;
    controller.view = this;

    return ValueListenableBuilder(
      valueListenable: state.loading,
      builder: (context, __, _) {
        if (state.loading.value) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text("HyperExample"),
            actions: const [],
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "UniqueID: ${UniqueKey()}",
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: controller.decrement,
                      icon: const Icon(Icons.remove, color: Colors.grey),
                    ),
                    ValueListenableBuilder(
                      valueListenable: state.counter,
                      builder: (context, __, _) {
                        return Text(
                          "${state.counter.value}",
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        );
                      },
                    ),
                    IconButton(
                      onPressed: controller.increment,
                      icon: const Icon(Icons.add, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => controller.initializeData(),
                  child: const Text("Reload"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  State<HyperExampleView> createState() => HyperExampleController();
}

---
@@@lib/presentation/hyper_example/state/hyper_example_state.dart
import 'package:flutter/material.dart';

class HyperExampleState {
  ValueNotifier<bool> loading = ValueNotifier<bool>(false);
  ValueNotifier<int> counter = ValueNotifier<int>(0);
}

---
@@@lib/presentation/hyper_example/controller/hyper_example_controller.dart
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';

class HyperExampleController extends State<HyperExampleView> {
  late HyperExampleView view;
  HyperExampleState state = HyperExampleState();

  @override
  void initState() {
    super.initState();
    GetIt.I.registerSingleton<HyperExampleController>(this);
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void initializeData() async {
    state.loading.value = true;

    await Future.delayed(const Duration(milliseconds: 2000));

    state.loading.value = false;
  }

  void increment() {
    state.counter.value++;
  }

  void decrement() {
    state.counter.value--;
  }
}

---
@@@lib/presentation/hyper_example/widget/_
---