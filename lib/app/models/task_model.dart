import 'dart:convert';

class TaskModel {
  final int taskId;
  final String name;
  final int areaId;
  TaskModel({
    required this.taskId,
    required this.name,
    required this.areaId,
  });

  TaskModel copyWith({
    int? taskId,
    String? name,
    int? areaId,
  }) {
    return TaskModel(
      taskId: taskId ?? this.taskId,
      name: name ?? this.name,
      areaId: areaId ?? this.areaId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'task_id': taskId,
      'name': name,
      'area_id': areaId,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      taskId: map['task_id'] as int,
      name: map['name'] as String,
      areaId: map['area_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) =>
      TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'TaskModel(taskId: $taskId, name: $name, areaId: $areaId)';

  @override
  bool operator ==(covariant TaskModel other) {
    if (identical(this, other)) return true;

    return other.taskId == taskId;
  }

  @override
  int get hashCode => taskId.hashCode;
}
