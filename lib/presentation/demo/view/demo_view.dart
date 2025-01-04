import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tutorialx/core.dart';

@RoutePage()
class DemoView extends StatefulWidget {
  const DemoView({super.key});

  @override
  State<DemoView> createState() => _DemoViewState();
}

class _DemoViewState extends State<DemoView> {
  final controller = sl<DemoController>();
  DemoState get state => controller.state;

  @override
  void initState() {
    super.initState();
    controller.initState(init: () {
      //after state is initialized
    });
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {
    //after 1st build() is called
    //an example of how to listen to ValueNotifier
    controller.state.error.addListener(() {
      controller.onReady();
      // handle loading state
      // you can handle navigation, dialog, snackbar, etc
      // based on the loading state
      if (controller.state.error.value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(controller.state.errorMessage.value),
          ),
        );
      }
    });
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
            title: const Text("Demo"),
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

