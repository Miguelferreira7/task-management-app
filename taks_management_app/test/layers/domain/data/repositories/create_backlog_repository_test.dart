import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:taks_management_app/layers/data/datasources/local/create_backlog_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/create_backlog_repository_imp.dart';
import 'package:taks_management_app/layers/domain/repositories/create_backlog_repository.dart';

void main() {
  test('should return create backlog repository not null', () {
    
    CreateBacklogDataSourceImp dataSource = CreateBacklogDataSourceImp();
    CreateBacklogRepository repository = CreateBacklogRepositoryImp(dataSource);

    var result = repository;
    expect(result, isNotNull);
  });
}
