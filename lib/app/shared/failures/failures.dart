abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ConnectionNotFoundFailure extends Failure {
  ConnectionNotFoundFailure({required super.errorMessage});
}

class BadRequestFailure extends Failure {
  BadRequestFailure({required super.errorMessage});
}
