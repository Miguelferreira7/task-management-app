import 'package:dartz/dartz.dart';
import 'package:taks_management_app/layers/data/datasources/create_backlog_datasource.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

class CreateBacklogDataSourceImp implements CreateBacklogDatasource {
  @override
  Future<bool> call(BackLogEntity backlog) async {
    bool result = backlog.verifyBacklogIsValid();
    

    if (result) {
      return true;
    } else {
      return false;
    }
  }
}
