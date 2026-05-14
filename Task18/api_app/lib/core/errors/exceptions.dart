import 'package:api_app/core/errors/error_model.dart';
import 'package:dio/dio.dart';

class ServerException implements Exception {
  final ErrorModel errmodel;
  ServerException({required this.errmodel});
}

void handeldioexception(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerException(errmodel: ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerException(errmodel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.receiveTimeout:
      throw ServerException(errmodel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.badCertificate:
      throw ServerException(errmodel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400:
          throw ServerException(
            errmodel: ErrorModel.fromjson(e.response!.data),
          );

        case 401:
          throw ServerException(
            errmodel: ErrorModel.fromjson(e.response!.data),
          );

        case 403:
          throw ServerException(
            errmodel: ErrorModel.fromjson(e.response!.data),
          );

        case 404:
          throw ServerException(
            errmodel: ErrorModel.fromjson(e.response!.data),
          );

        case 409:
          throw ServerException(
            errmodel: ErrorModel.fromjson(e.response!.data),
          );

        case 422:
          throw ServerException(
            errmodel: ErrorModel.fromjson(e.response!.data),
          );

        case 504:
          throw ServerException(
            errmodel: ErrorModel.fromjson(e.response!.data),
          );
      }

    case DioExceptionType.cancel:
      throw ServerException(errmodel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.connectionError:
      throw ServerException(errmodel: ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.unknown:
      throw ServerException(errmodel: ErrorModel.fromjson(e.response!.data));
  }
}
