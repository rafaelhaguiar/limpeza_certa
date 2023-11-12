import 'dart:convert';

import 'package:limpeza_certa/app/models/area_model.dart';

class BuildingModel {
  final int id;
  final String name;
  final List<AreaModel> areaList;
  BuildingModel({
    required this.id,
    required this.name,
    required this.areaList,
  });

  BuildingModel copyWith({
    int? id,
    String? name,
    List<AreaModel>? areaList,
  }) {
    return BuildingModel(
      id: id ?? this.id,
      name: name ?? this.name,
      areaList: areaList ?? this.areaList,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'areaList': areaList.map((x) => x.toMap()).toList(),
    };
  }

  factory BuildingModel.fromMap(Map<String, dynamic> map) {
    return BuildingModel(
      id: map['id'] as int,
      name: map['name'] as String,
      areaList: List<AreaModel>.from(
        (map['areaList'] as List<int>).map<AreaModel>(
          (x) => AreaModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory BuildingModel.fromJson(String source) =>
      BuildingModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'BuildingModel(id: $id, name: $name, areaList: $areaList)';

  @override
  bool operator ==(covariant BuildingModel other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
