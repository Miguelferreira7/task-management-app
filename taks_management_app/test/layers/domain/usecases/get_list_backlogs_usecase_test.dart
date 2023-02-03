import 'package:flutter_test/flutter_test.dart';
import 'package:taks_management_app/layers/data/datasources/get_list_backlogs_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/local/get_list_backlogs_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/get_list_backlogs_repository_imp.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/domain/usecases/get_list_backlogs/get_list_backlogs_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/get_list_backlogs/get_list_backlogs_usecase_imp.dart';

GetListBackLogsDatasource datasource = GetListBacklogsDatasourceImp();
GetListBackLogsRepositoryImp repository =
    GetListBackLogsRepositoryImp(datasource);

void main() {
  test("should return a list of backlogs have a lenght than 0", () async {
    GetListBacklogsUseCase useCase = GetListBacklogsUseCaseImp(repository);
    List<BackLogEntity> result = [];
    var request = await useCase();
    request.fold((l) => result = [], (r) => result.addAll(r));

    expect(true, result.isNotEmpty);
  });
}
