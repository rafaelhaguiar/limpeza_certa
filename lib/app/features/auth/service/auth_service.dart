import 'package:limpeza_certa/app/features/auth/model/auth_model.dart';
import 'package:limpeza_certa/app/shared/failures/failures.dart';

abstract interface class IAuthService {
  Future<(Failure?, AuthModel?)> auth();
}

final class AuthServiceImpl implements IAuthService {
  @override
  Future<(Failure?, AuthModel?)> auth() async {
    try {
      return (null, const AuthModel(userUnitId: 1, userUnitName: 2));
    } catch (e) {
      return (ConnectionNotFoundFailure(errorMessage: 'teste'), null);
    }
  }
}
