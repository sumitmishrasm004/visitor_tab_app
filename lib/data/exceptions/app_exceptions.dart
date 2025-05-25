
class AppException implements Exception{
  final _messsage;
  final _prefix;

  AppException([this._messsage, this._prefix]);

  @override
  String toString() {
    return "$_prefix$_messsage";
  }
}

class InternetException extends AppException{
  InternetException([String? messsage]) : super(messsage, 'No internet');
}

class RequestTimeout extends AppException{
  RequestTimeout([String? messsage]) : super(messsage, 'Request timeout');
}


class ServerException extends AppException{
  ServerException([String? messsage]) : super(messsage, 'Internal Server Error');
}

class InvalidUrlException extends AppException{
  InvalidUrlException([String? messsage]) : super(messsage, 'Invalid Url');
}

class FetchDataException extends AppException{
  FetchDataException([String? messsage]) : super(messsage, 'Error while communication');
}