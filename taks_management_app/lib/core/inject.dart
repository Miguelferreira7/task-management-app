import 'package:get_it/get_it.dart';
import 'package:taks_management_app/core/database_instance.dart';

class Inject {

  static initialize() {
    GetIt getIt = GetIt.instance;

    // CORE
    getIt.registerLazySingleton(() => DataBaseInstance());

    //DATASOURCES


    //REPOSITORIES


    //USECASES


    //CONTROLLERS


  }
}