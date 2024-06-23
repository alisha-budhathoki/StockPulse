import 'package:dio/dio.dart';
import 'package:stock_pulse/core/constants/network_error_messages.dart';
import 'package:stock_pulse/data/sources/exceptions/exception_handler.dart';
import 'package:stock_pulse/data/sources/exceptions/extensions.dart';
import 'package:stock_pulse/data/sources/remote_source.dart';
import 'package:universal_io/io.dart';

class RemoteSourceImpl implements RemoteSource {
  RemoteSourceImpl({required this.dio});
  final Dio dio;

  @override
  Future<Map<String, dynamic>> get(
    String url, {
    Map<String, dynamic> queryParam = const {},
  }) async {
    try {
      final response = await dio.get(
        url,
        queryParameters: queryParam,
      );
      if (response.data is Map<String, dynamic>) {
        return response.data as Map<String, dynamic>;
      }
      return {'data': response.data};
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future<Map<String, dynamic>> post(
    String url, {
    Map<String, dynamic> queryParam = const {},
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final response = await dio.post(
        url,
        queryParameters: queryParam,
        data: body,
      );
      if (response.data is Map<String, dynamic>) {
        return response.data as Map<String, dynamic>;
      }
      return {'data': response.data};
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Exception _handleDioError(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionTimeout:
        return AppException(message: NetworkErrorMessages.timeout);

      case DioExceptionType.cancel:
        return AppException(message: NetworkErrorMessages.canceled);

      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
        return AppExceptionExtensions.fromStatusCode(
          exception.response?.statusCode,
        );

      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        if (exception.error is SocketException) {
          return AppException(
            message: NetworkErrorMessages.noInternetConnection,
          );
        }
        return AppExceptionExtensions.fromStatusCode(
          exception.response?.statusCode,
        );
      default:
        return AppException(message: NetworkErrorMessages.generalError);
    }
  }
}
