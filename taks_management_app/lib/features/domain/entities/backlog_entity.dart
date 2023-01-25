import 'package:equatable/equatable.dart';
import 'tasks_entity.dart';

class BacklogEntity extends Equatable{

  int id;
  String title;
  String description;
  String priority;
  List<TaskEntity> tasks;

  BacklogEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.priority,
    required this.tasks
  });

  @override
  List<Object> get props => [
    id,
    title,
    description,
    priority,
    tasks
  ];
}