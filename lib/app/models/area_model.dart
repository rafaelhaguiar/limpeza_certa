import 'dart:convert';

import 'package:limpeza_certa/app/models/task_model.dart';

class AreaModel {
  final int id;
  final String name;
  final List<TaskModel> taskList;
  AreaModel({
    required this.id,
    required this.name,
    required this.taskList,
  });

  AreaModel copyWith({
    int? id,
    String? name,
    List<TaskModel>? taskList,
  }) {
    return AreaModel(
      id: id ?? this.id,
      name: name ?? this.name,
      taskList: taskList ?? this.taskList,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'taskList': taskList.map((x) => x.toMap()).toList(),
    };
  }

  factory AreaModel.fromMap(Map<String, dynamic> map) {
    return AreaModel(
      id: map['id'] as int,
      name: map['name'] as String,
      taskList: List<TaskModel>.from(
        (map['taskList'] as List<int>).map<TaskModel>(
          (x) => TaskModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory AreaModel.fromJson(String source) =>
      AreaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AreaModel(id: $id, name: $name, taskList: $taskList)';

  @override
  bool operator ==(covariant AreaModel other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
