import 'package:dio/dio.dart';

abstract class Failures {
  final String errMsg;

  const Failures(this.errMsg);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMsg);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with API server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API server');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate received');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection error occurred');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('There is No Internet Connection!');
        }
        return ServerFailure(
          'An unknown error occurred: ${dioException.message}',
        );

      default:
        return ServerFailure('Oops!');
    }
  }

  /// Helper function to handle bad response errors dynamically
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request is not foud! Please Try Later ...');
    } else if (statusCode == 500) {
      return ServerFailure(
        'Server is under maintainance! Please Try Later ...',
      );
    } else {
      return ServerFailure('Oops! there was an error, Please Try Later ...');
    }
  }
}
