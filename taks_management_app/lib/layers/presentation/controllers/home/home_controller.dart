// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:taks_management_app/core/utils/status_backlog_enum.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

class HomeController {
  HomeController();

  List<String> listOptionsFilter = [
    StatusBacklogEnumMap[StatusBacklogEnum.completed]!,
    StatusBacklogEnumMap[StatusBacklogEnum.upcoming]!,
    StatusBacklogEnumMap[StatusBacklogEnum.inProgress]!,
  ];

  List<BackLogEntity> mockListBacklogs = [

   BackLogEntity(
      title: 'teste',
      priority: 'high',
      id: 0,
      description: 'teste descricao',
      initialData: DateTime.now(),
      finalData: DateTime.now()
   ),
   BackLogEntity(
     title: 'teste2',
     priority: 'low',
     id: 0,
     description: 'teste descricao',
     initialData: DateTime.now(),
     finalData: DateTime.now()
   ),
   BackLogEntity(
     title: 'teste2',
     priority: 'medium',
     id: 0,
     description: 'teste descricao',
     initialData: DateTime.now(),
     finalData: DateTime.now()
   ),
];


Color returnColorOfPriority(String priority) {
  String string = priority.toLowerCase().trim();
  if (string.contains('high')) {
    return const Color(0xFFE16262);
  } else if (string.contains('medium')) {
    return  const Color(0xFFB8C36E);
  } else {
    return  const Color(0xFF71EE7E);
  }
}

String setFirstCharacterToUpperCase(String string) {
  String newString = string.replaceFirst(string[0], string[0].toUpperCase());

  return newString;
}


}
