import 'package:flutter_test/flutter_test.dart';
import 'package:taks_management_app/layers/data/datasources/create_backlog_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/local/create_backlog_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/create_backlog_repository_imp.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/domain/usecases/create_backlog/create_backlog_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/create_backlog/create_backlog_usecase_imp.dart';

void main() {
      CreateBacklogDatasource datasource = CreateBacklogDataSourceImp();
    CreateBacklogRepositoryImp repository =
        CreateBacklogRepositoryImp(datasource);
  test("should return sucess to create a backlog", () async {

    BackLogEntity backlog = BackLogEntity(
        titulo: 'teste',
        prioridade: 'high',
        id: 0,
        descricao: 'teste descricao',
        dataInicio: DateTime.now(),
        dataFinal: DateTime.now());

    
    var request = await repository(backlog);
    

    expect(true, request);
  });

  test("should return failure to create a backlog", () async {

    BackLogEntity backlog = BackLogEntity(
        titulo: '',
        prioridade: 'high',
        id: 0,
        descricao: 'teste descricao',
        dataInicio: DateTime.now(),
        dataFinal: DateTime.now());

 

    var request = await repository(backlog);
   

    expect( false , request);
  });
}
