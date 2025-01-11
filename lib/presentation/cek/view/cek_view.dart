import 'package:flutter/material.dart';
import 'package:tutorialx/core.dart';

@RoutePage()
class CekView extends StatefulWidget {
  const CekView({super.key});
  @override
  State<CekView> createState() => _CekViewState();
}

class _CekViewState extends State<CekView> {
  final controller = sl<CekController>();
  CekState get state => controller.state;
  @override
  void initState() {
    super.initState();
    controller.initState(init: () {});
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {
    controller.onReady();
    CekListener().handle(context);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            title: const Text("Cek"),
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
}
