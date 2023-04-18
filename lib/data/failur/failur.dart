import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
}

class ResponseFailure extends Failure {
  const ResponseFailure(String message) : super(message);
}

class DBFailure extends Failure {
  const DBFailure(String message) : super(message);
}

class FileFailure extends Failure {
  const FileFailure(String message) : super(message);
}

class PermissionFailure extends Failure {
  const PermissionFailure(String message) : super(message);
}
