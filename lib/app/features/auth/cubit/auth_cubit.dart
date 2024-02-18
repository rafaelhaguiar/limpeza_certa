// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:limpeza_certa/app/features/auth/cubit/auth_state.dart';
import 'package:limpeza_certa/app/features/auth/service/auth_service.dart';

class AuthCubit extends Cubit<AuthState> {
  final IAuthService _service;

  AuthCubit(
    this._service,
  ) : super(AuthStateInitial());

  void auth({required String userId, required userPassword}) {
    emit(AuthStateLoading());
    _service.auth().then((value) {
      var (failure, authModel) = value;
      if (failure != null || authModel == null) {
        emit(AuthStateError());
        return;
      }
      emit(AuthStateSuccess(authModel: authModel));
    });
  }
}
