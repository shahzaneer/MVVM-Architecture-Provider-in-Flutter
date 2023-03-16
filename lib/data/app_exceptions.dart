class AppExceptions implements Exception {
  final String? _prefix, _message;

  AppExceptions([this._message, this._prefix]);
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
  // ServerTimeOut([String? message]) : super(message, "server Timeout");

  // ServerTimeOut([String? message]) : // (this is list initiallizer in dart) super(message, "server Timeout");
}
