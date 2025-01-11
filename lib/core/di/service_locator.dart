import 'package:tutorialx/core.dart';

final sl = GetIt.instance;

Future<void> configureDependencies() async {
  // Register your services and dependencies below, such as Dio,
  // SharedPreferences, Firestore, NetworkManager, etc.
  // eg:
  // sl.registerLazySingleton<Dio>(() => Dio());
  configureControllerDependencies();
    await afterConfigureDependencies();
}

Future<void> afterConfigureDependencies() async {
  // after all dependencies are registered
}