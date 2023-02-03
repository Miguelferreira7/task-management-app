import 'package:taks_management_app/layers/domain/entities/task_entity.dart';

import '../create_task_datasource.dart';

class CreateTaskDatasourceImp implements CreateTaskDatasource {
  @override
  Future<bool> call(TaskEntity task) async {
    Future<bool> createTask(TaskEntity task) async {
      //only test, remove this logic after implement local database
      if (task.descricao.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    }

    return await createTask(task);
  }
}
