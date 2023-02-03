// ignore_for_file: public_member_api_docs, sort_constructors_first

class TaskEntity {
  int idBacklogPai;
  int id;
  String titulo;
  String descricao;
  DateTime dataInicio;
  DateTime dataFinal;
  TaskEntity({
   required this.idBacklogPai,
   required this.id,
   required this.titulo,
   required this.descricao,
   required this.dataInicio,
   required this.dataFinal,
  });

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'idBacklogPai': idBacklogPai,
  //     'id': id,
  //     'titulo': titulo,
  //     'descricao': descricao,
  //     'dataInicio': dataInicio?.millisecondsSinceEpoch,
  //     'dataFinal': dataFinal?.millisecondsSinceEpoch,
  //   };
  // }

  // factory TaskEntity.fromMap(Map<String, dynamic> map) {
  //   return TaskEntity(
  //     idBacklogPai: map['idBacklogPai'] != null ? map['idBacklogPai'] as int : null,
  //     id: map['id'] != null ? map['id'] as int : null,
  //     titulo: map['titulo'] != null ? map['titulo'] as String : null,
  //     descricao: map['descricao'] != null ? map['descricao'] as String : null,
  //     dataInicio: map['dataInicio'] != null ? DateTime.parse(map['dataInicio']) : null,
  //     dataFinal: map['dataFinal'] != null ? DateTime.parse(map['dataFinal']) : null,
  //   );
  // }



  
}
