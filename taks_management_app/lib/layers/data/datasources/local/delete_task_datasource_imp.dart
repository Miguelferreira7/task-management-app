import 'package:taks_management_app/layers/data/datasources/delete_task_datasource.dart';

class DeleteTaskDataSourceImp implements DeleteTaskDataSource {
  @override
  Future<bool> call(int idTask) async{
    Future<bool> deleteTask(int idTask) async {
      //only test, remove this logic after implement local database
      if (idTask != 0) {
        return true;
      } else {
        return false;
      }
    }

    return await deleteTask(idTask);
  


  }
  
}