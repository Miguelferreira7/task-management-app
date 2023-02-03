import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:taks_management_app/layers/data/datasources/delete_task_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/local/delete_task_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/delete_task_repository_imp.dart';
import 'package:taks_management_app/layers/domain/entities/task_entity.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_task/delete_task_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_task/delete_task_usecase_imp.dart';

void main() {
DeleteTaskDataSource datasource = DeleteTaskDataSourceImp();
DeleteTaskRepositoryImp repository = DeleteTaskRepositoryImp(datasource);
DeleteTaskUseCase useCase = DeleteTaskUseCaseImp(repository);

final isar = GetIt.instance.get<DeleteTaskUseCase>();


  test("should return a success for delete a task", () async{
  bool request = await useCase(TaskEntity());

    expect(true, request);
  });

  test("should return a failure for delete a task", () async{
  bool request = await useCase(
      TaskEntity()..
      id = null..
      idBacklog = null
  );

    expect(false, request);
  });
}
