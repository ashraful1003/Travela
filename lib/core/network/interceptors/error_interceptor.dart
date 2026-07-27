import 'package:dio/dio.dart';
import 'package:travela/core/logger/logger_interface.dart';

/// Interceptor responsible for logging and lightweight preprocessing of
/// errors. Actual mapping from DioException -> project-specific Exceptions is
/// handled inside ApiClient so upper layers never see Dio types.
class ErrorInterceptor extends Interceptor {
  final LoggerInterface _logger;

  ErrorInterceptor(this._logger);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final Uri requestUri = err.requestOptions.uri;
    _logger.warn('Network error for ${requestUri.toString()}');
    _logger.warn('Error type: ${err.type}');

    // Keep behavior simple: log and forward the original DioException.
    // ApiClient will translate DioException into project Exceptions so
    // callers do not depend on Dio internals.
    handler.next(err);
  }
}
