import 'package:api_app/core/api/api_consumer.dart';
import 'package:api_app/core/api/api_interceptors.dart';
import 'package:api_app/core/api/end_points.dart';
import 'package:api_app/core/errors/exceptions.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseurl;
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );
    dio.interceptors.add(ApiInterceptors());
  }
  @override
  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparameters,
    bool isformdata = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: isformdata ? FormData.fromMap(data) : data,
        queryParameters: queryparameters,
      );
      return response.data;
    } on DioException catch (e) {
      handeldioexception(e);
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryparameters,
  }) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryparameters,
      );
      return response.data;
    } on DioException catch (e) {
      handeldioexception(e);
    }
  }

  @override
  Future<dynamic> patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparameters,
    bool isformdata = false,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: isformdata ? FormData.fromMap(data) : data,
        queryParameters: queryparameters,
      );
      return response.data;
    } on DioException catch (e) {
      handeldioexception(e);
    }
  }

  @override
  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparameters,
    bool isformdata = false,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: isformdata ? FormData.fromMap(data) : data,
        queryParameters: queryparameters,
      );
      return response.data;
    } on DioException catch (e) {
      handeldioexception(e);
    }
  }
}
