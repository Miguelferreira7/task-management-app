import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:taks_management_app/core/database_instance.dart';
import 'package:taks_management_app/core/inject.dart';
import 'package:taks_management_app/layers/data/datasources/get_list_backlogs_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/local/get_list_backlogs_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/get_list_backlogs_repository_imp.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/domain/repositories/create_backlog_repository.dart';
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

  test("should return a list of backlogs have a lenght than 0", () async {
    List<BackLogEntity> result = [];

    BackLogEntity backLogEntity = BackLogEntity(
        id: 1,
        title: "titleb test",
        description: "description test",
        priority: "high",
        initialData: DateTime.now(),
        finalData: DateTime.now());

    final createBacklog = GetIt.instance.get<CreateBacklogRepository>();

    await createBacklog.call(backLogEntity);

    var request = await useCase();
    request.fold((l) => result = [], (r) => result.addAll(r));

    expect(true, result.isNotEmpty);
  });
}
