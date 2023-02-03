import 'package:taks_management_app/layers/domain/usecases/delete_task/delete_task_usecase.dart';

import '../../repositories/delete_task_repository.dart';

class DeleteTaskUseCaseImp implements DeleteTaskUseCase {
  final DeleteTaskRepository _deleteTaskRepository;
  DeleteTaskUseCaseImp(this._deleteTaskRepository);

  @override
  Future<bool> call(int idTask) async {
    return await _deleteTaskRepository(idTask);
  }
}
