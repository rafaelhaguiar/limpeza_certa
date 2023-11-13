import 'dart:convert';
import 'package:limpeza_certa/app/models/task_model.dart';

class AreaModel {
  final int id;
  final String name;
  final int buildingId;
  final List<TaskModel> taskList;
  AreaModel({
    required this.id,
    required this.name,
    required this.buildingId,
    required this.taskList,
  });

  AreaModel copyWith({
    int? id,
    String? name,
    int? buildingId,
    List<TaskModel>? taskList,
  }) {
    return AreaModel(
      id: id ?? this.id,
      name: name ?? this.name,
      buildingId: buildingId ?? this.buildingId,
      taskList: taskList ?? this.taskList,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'building_id': buildingId,
    };
  }

  factory AreaModel.fromMap(Map<String, dynamic> map) {
    return AreaModel(
        id: map['id'] as int,
        name: map['name'] as String,
        buildingId: map['buildingId'] as int,
        taskList: []);
  }

  String toJson() => json.encode(toMap());

  factory AreaModel.fromJson(String source) =>
      AreaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AreaModel(id: $id, name: $name, buildingId: $buildingId, taskList: $taskList)';
  }

  @override
  bool operator ==(covariant AreaModel other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
