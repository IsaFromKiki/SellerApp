

class NetworkException implements Exception {
  NetworkException([this.message, this.prefix]);

  final dynamic message;
  final dynamic prefix;

  String toString() {
    return "$prefix$message";
  }
}

class FetchDataException extends NetworkException {

  FetchDataException(String message)
      : super(message, "Error During Communication: ");
}

class BadRequestException extends NetworkException {
  BadRequestException(String message) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends NetworkException {
  UnauthorisedException(String message) : super(message, "Unauthorised: ");
}

class ForbiddenException extends NetworkException {
  ForbiddenException(String message) : super(message, "Forbidden: ");
}

class InvalidInputException extends NetworkException {
  InvalidInputException(String message) : super(message, "Invalid Input: ");
}

class ServerSideException extends NetworkException {
  ServerSideException(String message) : super(message, "Server side: ");
}