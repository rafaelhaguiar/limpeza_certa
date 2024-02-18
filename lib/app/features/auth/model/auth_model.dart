// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class AuthModel extends Equatable {
  final int userUnitId;
  final int userUnitName;
  const AuthModel({
    required this.userUnitId,
    required this.userUnitName,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
