import 'dart:convert';

import 'package:limpeza_certa/app/models/area_model.dart';

class BuildingModel {
  final int id;
  final String name;
  final String condominiumCnpj;
  final List<AreaModel> areaList;
  BuildingModel({
    required this.id,
    required this.name,
    required this.condominiumCnpj,
    required this.areaList,
  });

  BuildingModel copyWith({
    int? id,
    String? name,
    String? condominiumCnpj,
    List<AreaModel>? areaList,
  }) {
    return BuildingModel(
      id: id ?? this.id,
      name: name ?? this.name,
      condominiumCnpj: condominiumCnpj ?? this.condominiumCnpj,
      areaList: areaList ?? this.areaList,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'condominium_cnpj': condominiumCnpj,
    };
  }

  factory BuildingModel.fromMap(Map<String, dynamic> map) {
    return BuildingModel(
      id: map['id'] as int,
      name: map['name'] as String,
      condominiumCnpj: map['condominiumCnpj'] as String,
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
  String toString() {
    return 'BuildingModel(id: $id, name: $name, condominiumCnpj: $condominiumCnpj, areaList: $areaList)';
  }

  @override
  bool operator ==(covariant BuildingModel other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
