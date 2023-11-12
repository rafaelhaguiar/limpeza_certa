import 'dart:convert';

import 'package:limpeza_certa/app/models/building_model.dart';

class CondominiumModel {
  final String cnpj;
  final String name;
  final bool isActive;
  final List<BuildingModel> buildingsList;
  CondominiumModel({
    required this.cnpj,
    required this.name,
    required this.isActive,
    required this.buildingsList,
  });

  CondominiumModel copyWith({
    String? cnpj,
    String? name,
    bool? isActive,
    List<BuildingModel>? buildingsList,
  }) {
    return CondominiumModel(
      cnpj: cnpj ?? this.cnpj,
      name: name ?? this.name,
      isActive: isActive ?? this.isActive,
      buildingsList: buildingsList ?? this.buildingsList,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cnpj': cnpj,
      'name': name,
      'isActive': isActive,
      'buildingsList': buildingsList.map((x) => x.toMap()).toList(),
    };
  }

  factory CondominiumModel.fromMap(Map<String, dynamic> map) {
    return CondominiumModel(
      cnpj: map['cnpj'] as String,
      name: map['name'] as String,
      isActive: map['isActive'] as bool,
      buildingsList: List<BuildingModel>.from(
        (map['buildingsList'] as List<int>).map<BuildingModel>(
          (x) => BuildingModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CondominiumModel.fromJson(String source) =>
      CondominiumModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CondominiumModel(cnpj: $cnpj, name: $name, isActive: $isActive, buildingsList: $buildingsList)';
  }

  @override
  bool operator ==(covariant CondominiumModel other) {
    if (identical(this, other)) return true;

    return other.cnpj == cnpj;
  }

  @override
  int get hashCode {
    return cnpj.hashCode;
  }
}
