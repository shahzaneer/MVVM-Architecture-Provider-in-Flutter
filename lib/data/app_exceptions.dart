class AppExceptions implements Exception {
  final String? _prefix, _message;

  AppExceptions([this._message, this._prefix]);
  // Recalling dart's Constructors
  // {} -> named Optional
  // [] -> positional Optional

  @override
  String toString() {
    return "$_prefix: $_message";
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, "no Internet");
}

class ServerTimeOut extends AppExceptions {
  ServerTimeOut([String? message]) : super(message, "server Timeout");

  // ServerTimeOut([String? message]) : // (this is list initiallizer in dart) super(message, "server Timeout");
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message, "Bad Request Exception");
}


class InvalidInputException extends AppExceptions {
  InvalidInputException([String? message])
      : super(message, "Invalid input Exception Exception");
}

class UnauthorizedException extends AppExceptions {
  UnauthorizedException([String? message])
      : super(message, "Unauthorized Exception");
}


// Accordingly other exception classes can be made here