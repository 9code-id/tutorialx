import 'package:flutter/material.dart';
import 'package:tutorialx/core.dart';

/*
//@HINT

You can navigate to this pages, please use:
router.push(CicakRoute());
router.replaceAll([CicakRoute()]);

Best practices:
- Use ValueNotifier to handle state management
- Use ValueListenableBuilder to listen to ValueNotifier changes
- Use controller to handle state changes
- Never change the state directly, always use controllerChange

Use Hotkeys:
- ctrl+shift+v  => Open View
- ctrl+shift+alt+v => Wrap widget with ValueListenableBuilder
- ctrl+shift+c  => Open Controller
- ctrl+shift+l  => Open Listener
- ctrl+shift+s  => Open State
- ctrl+shift+alt+c => Open ControllerImpl/Controller


If you want to change state from different view,
You can use ServiceLocator
example:
- sl<CicakController>().increment();

[Please use this hotkey to remove this hint:]
alt+shift+/

//@:HINT
*/

@RoutePage()
class CicakView extends StatefulWidget {
  const CicakView({super.key});

  @override
  State<CicakView> createState() => _CicakViewState();
}

class _CicakViewState extends State<CicakView> {
  final controller = sl<CicakController>();
  CicakState get state => controller.state;

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
    controller.onReady();
    CicakListener().handle(context);
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
            title: const Text("Cicak"),
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

