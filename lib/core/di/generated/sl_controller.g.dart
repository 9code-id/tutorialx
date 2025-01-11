// ignore_for_file: unused_import
import 'package:tutorialx/core.dart';

void configureControllerDependencies() async {
      
  sl.registerLazySingleton<AsaksfoakController>(
    () => AsaksfoakControllerImpl(
    
    ),
  );

  sl.registerLazySingleton<CedaokController>(
    () => CedaokControllerImpl(
    
    ),
  );

  sl.registerLazySingleton<CendanaController>(
    () => CendanaControllerImpl(
    
    ),
  );

  sl.registerLazySingleton<CicakController>(
    () => CicakControllerImpl(
    
    ),
  );

  sl.registerLazySingleton<DemoController>(
    () => DemoControllerImpl(
    
    ),
  );

  sl.registerLazySingleton<SendokController>(
    () => SendokControllerImpl(
    
    ),
  );

  sl.registerLazySingleton<SeondasafController>(
    () => SeondasafControllerImpl(
    
    ),
  );

  sl.registerLazySingleton<SodakoController>(
    () => SodakoControllerImpl(
    
    ),
  );
}