import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../app/data/value/strings.dart';

class APIException implements Exception {
  final String message;

  APIException({required this.message});
}

class ExceptionHandler {
  ExceptionHandler._privateConstructor();

  static APIException handleError(Exception error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.sendTimeout:
          return APIException(message: 'No Internet');
        case DioExceptionType.connectionTimeout:
          return APIException(message: 'Connection Timeout');
        case DioExceptionType.badResponse:
          if (kDebugMode) {
            print(error.error);
          }
          return APIException(
              message:  'We\'re experiencing technical difficulties. Please refresh and try again.');
        default:
          return APIException(message: 'network error');
      }
    } else {
      return APIException(message: 'network error');
    }
  }
}

class HandleError {
  HandleError._privateConstructor();

  static handleError(APIException? error) {
    Get.rawSnackbar(message: error?.message ?? ErrorMessages.networkGeneral);
  }
}
