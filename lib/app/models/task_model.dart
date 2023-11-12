import 'dart:convert';

class TaskModel {
  final int taskId;
  final String name;
  TaskModel({
    required this.taskId,
    required this.name,
  });

  TaskModel copyWith({
    int? taskId,
    String? name,
  }) {
    return TaskModel(
      taskId: taskId ?? this.taskId,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taskId': taskId,
      'name': name,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      taskId: map['taskId'] as int,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) =>
      TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TaskModel(taskId: $taskId, name: $name)';

  @override
  bool operator ==(covariant TaskModel other) {
    if (identical(this, other)) return true;

    return other.taskId == taskId;
  }

  @override
  int get hashCode => taskId.hashCode;
}
