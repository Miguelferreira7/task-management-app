import 'package:flutter_test/flutter_test.dart';
import 'package:taks_management_app/layers/data/datasources/delete_task_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/local/delete_task_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/delete_task_repository_imp.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_task/delete_task_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_task/delete_task_usecase_imp.dart';

void main() {
DeleteTaskDataSource datasource = DeleteTaskDataSourceImp();
DeleteTaskRepositoryImp repository = DeleteTaskRepositoryImp(datasource);
DeleteTaskUseCase useCase = DeleteTaskUseCaseImp(repository);

  test("should return a sucess for delete a task", () async{
  bool request = await useCase(1);
    expect(true, request);

  });
  test("should return a failure for delete a task", () async{
  bool request = await useCase(0);
    expect(false, request);

  });
}
