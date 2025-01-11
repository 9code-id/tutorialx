// ignore_for_file: unused_import
import 'package:tutorialx/core.dart';

void configureControllerDependencies() async {
  sl.registerLazySingleton<CandaController>(
    () => CandaControllerImpl(),
  );

  sl.registerLazySingleton<CekController>(
    () => CekControllerImpl(),
  );

  sl.registerLazySingleton<DemoController>(
    () => DemoControllerImpl(),
  );

  sl.registerLazySingleton<LoginController>(
    () => LoginControllerImpl(),
  );

  sl.registerLazySingleton<SendakoController>(
    () => SendakoControllerImpl(),
  );
}
