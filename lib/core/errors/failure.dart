// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  Failure(this.errMessage);
}

class ServiecesFailure extends Failure {
  ServiecesFailure(super.errMessage);

  factory ServiecesFailure.fromDioErrpor(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServiecesFailure('Connection Timeout with Server');
      case DioExceptionType.sendTimeout:
        return ServiecesFailure('Sended Timeout with Server');
      case DioExceptionType.receiveTimeout:
        return ServiecesFailure('Receive Timeout with Server');
      case DioExceptionType.badCertificate:
        return ServiecesFailure('Bad Requset Timeout with Server');
      case DioExceptionType.badResponse:
        return ServiecesFailure(' Timeout with Server');
      case DioExceptionType.cancel:
        return ServiecesFailure('Request to Server was canceled');
      case DioExceptionType.connectionError:
        return ServiecesFailure('No Internet Connection ');
      case DioExceptionType.unknown:
    }
    return ServiecesFailure('');
  }
}
