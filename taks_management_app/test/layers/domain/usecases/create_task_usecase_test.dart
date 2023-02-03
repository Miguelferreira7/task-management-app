import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:taks_management_app/layers/data/datasources/create_task_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/local/create_task_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/create_task_repository_imp.dart';
import 'package:taks_management_app/layers/domain/entities/task_entity.dart';
import 'package:taks_management_app/layers/domain/usecases/create_task/create_task_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/create_task/create_task_usecase_imp.dart';

void main() {
  CreateTaskDatasource datasource = CreateTaskDatasourceImp();
  CreateTaskRepositoryImp repository = CreateTaskRepositoryImp(datasource);
  CreateTaskUseCase useCase = CreateTaskUseCaseImp(repository);

  test('should return sucess for create a task', () async {
    TaskEntity task = TaskEntity(
        idBacklogPai: 0,
        id: 1,
        titulo: "teste",
        descricao: "teste",
        dataInicio: DateTime.now(),
        dataFinal: DateTime.now());

    final resquest = await useCase(task);

    expect(true, resquest);
  });

    test('should return failure for create a task', () async {
    TaskEntity task = TaskEntity(
        idBacklogPai: 0,
        id: 1,
        titulo: "teste",
        descricao: "",
        dataInicio: DateTime.now(),
        dataFinal: DateTime.now());

    final resquest = await useCase(task);

    expect(false, resquest);
  });
}
