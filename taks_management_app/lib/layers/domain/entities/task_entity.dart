import 'package:isar/isar.dart';

part 'task_entity.g.dart';

@embedded
class TaskEntity {
  int? id;
  int? idBacklog;
  String? title;
  String? description;
  DateTime? initialData;
  DateTime? finalData;

  TaskEntity({
   this.id,
   this.idBacklog,
   this.title,
   this.description,
   this.initialData,
   this.finalData,
  });
}
