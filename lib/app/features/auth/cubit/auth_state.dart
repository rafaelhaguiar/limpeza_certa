import 'package:equatable/equatable.dart';
import 'package:limpeza_certa/app/features/auth/model/auth_model.dart';

abstract class AuthState {}

final class AuthStateInitial extends AuthState {}

final class AuthStateLoading extends AuthState {}

final class AuthStateSuccess extends AuthState implements Equatable {
  final AuthModel authModel;

  AuthStateSuccess({required this.authModel});

  @override
  List<Object?> get props => [authModel.userUnitId];

  @override
  bool? get stringify => true;
}

final class AuthStateError extends AuthState implements Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();

  @override
  bool? get stringify => true;
}
