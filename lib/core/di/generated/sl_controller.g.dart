// ignore_for_file: unused_import
import 'package:tutorialx/core.dart';

void configureControllerDependencies() async {
      
  sl.registerLazySingleton<CondaController>(
    () => CondaControllerImpl(
    
    ),
  );

  sl.registerLazySingleton<ContohController>(
    () => ContohControllerImpl(
    
    ),
  );
}