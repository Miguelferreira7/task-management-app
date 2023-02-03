import 'package:flutter_test/flutter_test.dart';
import 'package:taks_management_app/layers/data/datasources/get_list_backlogs_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/local/get_list_backlogs_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/get_list_backlogs_repository_imp.dart';

void main() {
  test("should return a list of backlogs result in not null ", () {
    GetListBackLogsDatasource datasource = GetListBacklogsDatasourceImp();
    GetListBackLogsRepositoryImp repository =
        GetListBackLogsRepositoryImp(datasource);

    var result = repository;
    expect(result, isNotNull);
  });
}
