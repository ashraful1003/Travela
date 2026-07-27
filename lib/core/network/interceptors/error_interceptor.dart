import 'package:dio/dio.dart';
import 'package:travela/core/errors/network_exception.dart';
import 'package:travela/core/errors/server_exception.dart';
import 'package:travela/core/errors/unknown_exception.dart';
import 'package:travela/core/logger/logger_interface.dart';

/// Interceptor that converts Dio errors into project-specific exceptions and
/// delegates logging. Interceptors should not throw Dio-specific types up the
/// stack — convert them into domain-friendly exceptions here.
class ErrorInterceptor extends Interceptor {
  final LoggerInterface _logger;

  ErrorInterceptor(this._logger);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Map common Dio error types to our exceptions.
    final Uri requestUri = err.requestOptions.uri;
    _logger.warn('Handling network error for $requestUri');

    final Exception e = _mapDioError(err);
    // Forward a wrapped DioError with new error to allow downstream handlers
    // to react. We wrap into a DioError to keep handler.next signature but
    // assign the new error object.
    final DioException dioError = DioException(
      requestOptions: err.requestOptions,
      error: e,
      response: err.response,
      type: err.type,
    );

    return handler.next(dioError);
  }

  Exception _mapDioError(DioException err) {
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout) {
      return const NetworkException('Request timed out');
    }

    if (err.type == DioExceptionType.badResponse) {
      final int? status = err.response?.statusCode;
      final String message = err.response?.statusMessage ?? 'Server error';
      return ServerException(message, statusCode: status);
    }

    if (err.type == DioExceptionType.badCertificate ||
        err.type == DioExceptionType.connectionError) {
      return const NetworkException('Connection failed');
    }

    if (err.type == DioExceptionType.cancel) {
      return const NetworkException('Request cancelled');
    }

    // Default fallback
    return UnknownException(err.error, err.stackTrace);
  }
}
