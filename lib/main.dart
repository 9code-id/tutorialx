import 'package:flutter/material.dart';
import 'package:tutorialx/core.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    sl.registerLazySingleton<AppRouter>(
      () => AppRouter(
        // TODO: please change the initial route
        initial: '/other',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: sl<AppRouter>().config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

