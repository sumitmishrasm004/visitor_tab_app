import 'dart:async';

import 'dart:io';
import 'package:visitor_app/constant/app_constants.dart';

class ExceptionHandlers {
  getExceptionString(error) {
    if (error is SocketException) {
      if (error.message == 'Software caused connection abort') {
        return SoftwareAbortException(AppConstant.slowInternetConnection);
      } else {
        return 'No internet connection.';
      }
    } else if (error is HttpException) {
      if (error.message == 'Software caused connection abort') {
        return SoftwareAbortException(AppConstant.slowInternetConnection);
      } else {
        return 'Connection error occurred, please try again';
      }
    } else if (error is FormatException) {
      return 'Invalid data format.';
    } else if (error is TimeoutException) {
      return 'Request timeout, please try again';
    } else if (error is BadRequestException) {
      return error.message.toString();
    } else if (error is UnAuthorizedException) {
      return error.message.toString();
    } else if (error is NotFoundException) {
      return error.message.toString();
    } else if (error is FetchDataException) {
      return error.message.toString();
    }else if (error is SoftwareAbortException) {
      return 'Slow connection or network issue.';
    } else if (error == 'session expired') {
      return FetchDataException('Session expired, please try again.');
    } else if (error == 'Your session has timed out. Please log in again to continue') {
      return FetchDataException(error);
    }else if(error == "Receiving data timeout[30000ms]"){
      return FetchDataException("Request timeout, please try again");
    } else {
      return FetchDataException(AppConstant.somethingWentWrong);
    }
  }

}

class AppException implements Exception {
  final String? message;
  final String? prefix;
  final String? url;
  AppException([this.message, this.prefix, this.url]);

  @override
  String toString() => message ?? AppConstant.somethingWentWrong;
}

class BadRequestException extends AppException {
  BadRequestException([String? message, String? url])
      : super(message, 'Bad request', url);
}

class FetchDataException extends AppException {
  FetchDataException([String? message, String? url])
      : super(message, 'Unable to process the request', url);
}

class ApiNotRespondingException extends AppException {
  ApiNotRespondingException([String? message, String? url])
      : super(message, 'Api not responding', url);
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException([String? message, String? url])
      : super(message, 'Unauthorized request', url);
}

class NotFoundException extends AppException {
  NotFoundException([String? message, String? url])
      : super(message, 'Page not found', url);
}

class SoftwareAbortException extends AppException {
  SoftwareAbortException([String? message, String? url])
      : super(message);
}

class SessionExpiredException extends AppException {
  SessionExpiredException([String? message, String? url])
      : super(message, 'session expired', url);
}

