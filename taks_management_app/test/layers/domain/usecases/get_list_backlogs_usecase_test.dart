import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:taks_management_app/core/database_instance.dart';
import 'package:taks_management_app/core/inject.dart';
import 'package:taks_management_app/layers/data/datasources/get_list_backlogs_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/local/get_list_backlogs_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/get_list_backlogs_repository_imp.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/domain/usecases/get_list_backlogs/get_list_backlogs_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/get_list_backlogs/get_list_backlogs_usecase_imp.dart';

GetListBackLogsDatasource datasource =
    GetListBacklogsDatasourceImp(dataBaseInstance: DataBaseInstance());
GetListBackLogsRepositoryImp repository =
    GetListBackLogsRepositoryImp(datasource);
GetListBacklogsUseCase useCase = GetListBacklogsUseCaseImp(repository);

void main() {
  setUp(() async {
    Inject.initialize();
    await Isar.initializeIsarCore(download: true);
  });

  test("should return a list of backlogs ", () async {
    var result;
    final request = await useCase();
    request.fold((l)=>  result = Left(l), (r) =>  result = Right(r) );

    expect(result, isInstanceOf<List<BackLogEntity>>());
  });
}
