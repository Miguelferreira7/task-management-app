import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:taks_management_app/core/inject.dart';
import 'package:taks_management_app/layers/data/datasources/delete_backlog_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/local/delete_backlog_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/delete_backlog_repository_imp.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_backlog/delete_backlog_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_backlog/delete_backlog_usecase_imp.dart';


void main() {
DeleteBacklogDataSource datasource = DeleteBacklogDataSourceImp();
DeleteBacklogRepositoryImp repository = DeleteBacklogRepositoryImp(datasource);
DeleteBacklogUseCase useCase = DeleteBacklogUseCaseImp(repository);
  
  setUp(() async {
    Inject.initialize();
    await Isar.initializeIsarCore(download: true);
  });
  
  test("should return sucess for deleted a backlog", () async {
    bool request = await useCase(1);

    expect(true, request);
  });

  test("should return failure for deleted a backlog", () async {
    bool request = await useCase(0);

    expect(false, request);
  });


}
