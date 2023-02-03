import '../delete_backlog_datasource.dart';

class DeleteBacklogDataSourceImp implements DeleteBacklogDataSource {
  @override
  Future<bool> call(int idBacklog) async {
    Future<bool> deleteBacklog(int idBacklog) async {
      //only test, remove this logic after implement local database
      if (idBacklog != 0) {
        return true;
      } else {
        return false;
      }
    }

    bool result = await deleteBacklog(idBacklog);

    return result;
  }
}
