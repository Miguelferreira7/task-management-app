import 'package:dartz/dartz.dart';
import 'package:taks_management_app/layers/data/datasources/get_list_backlogs_datasource.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

class GetListBacklogsDatasourceImp implements GetListBackLogsDatasource {
  @override
  Future<Either<Exception, List<BackLogEntity>>> call() async {
    List<BackLogEntity> listMock = [
      BackLogEntity(titulo: 'teste', prioridade: 'high', id: 0, descricao: 'teste descricao', dataInicio: DateTime.now(), dataFinal: DateTime.now()),
      BackLogEntity(titulo: 'teste', prioridade: 'high', id: 0, descricao: 'teste descricao', dataInicio: DateTime.now(), dataFinal: DateTime.now()),
     
    ];

    return  Right(listMock);
  }
}