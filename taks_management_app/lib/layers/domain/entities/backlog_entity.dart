// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:taks_management_app/layers/domain/entities/task_entity.dart';

class BackLogEntity {
  int id;
  String titulo;
  String descricao;
  String prioridade;
  DateTime dataInicio;
  DateTime dataFinal;
  List<TaskEntity>? listaDeTasks;
  BackLogEntity({
    required this.id,
    required this.titulo,
    required this.descricao,
    required this.prioridade,
    required this.dataInicio,
    required this.dataFinal,
    this.listaDeTasks,
  });

  bool verifyBacklogIsValid() {
    if (titulo.isNotEmpty && descricao.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'titulo': titulo,
  //     'descricao': descricao,
  //     'prioridade': prioridade,
  //     'dataInicio': dataInicio?.millisecondsSinceEpoch,
  //     'dataFinal': dataFinal?.millisecondsSinceEpoch,
  //     'listaDeTasks': listaDeTasks?.map((x) => x.toMap()).toList(),
  //   };
  // }

  // factory BackLogEntity.fromMap(Map<String, dynamic> map) {
  //   return BackLogEntity(
  //     id: map['id'] != null ? map['id'] as int : null,
  //     titulo: map['titulo'] != null ? map['titulo'] as String : null,
  //     descricao: map['descricao'] != null ? map['descricao'] as String : null,
  //     prioridade: map['prioridade'] != null ? map['prioridade'] as String : null,
  //     dataInicio: map['dataInicio'] != null ? DateTime.parse(map['dataInicio'] ) : null,
  //     dataFinal: map['dataFinal'] != null ? DateTime.parse(map['dataFinal'] ) : null,
  //     listaDeTasks: map['listaDeTasks'] != null ? List<TaskEntity>.from((map['listaDeTasks'] as List<int>).map<TaskEntity?>((x) => TaskEntity.fromMap(x as Map<String,dynamic>),),) : null,
  //   );
  // }

}
