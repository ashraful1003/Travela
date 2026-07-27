import 'package:dio/dio.dart';
import 'package:travela/core/logger/logger_interface.dart';

/// Simple logging interceptor that delegates to [LoggerInterface]. Keeps
/// logging concerns separate from request/response transformation.
class LoggingInterceptor extends Interceptor {
  final LoggerInterface _logger;

  LoggingInterceptor(this._logger);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.debug('➡️ [${options.method}] ${options.uri}');
    _logger.debug('Headers: ${options.headers}');
    if (options.data != null) {
      _logger.debug('Request data: ${options.data}');
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.debug('⬅️ [${response.statusCode}] ${response.requestOptions.uri}');
    _logger.debug('Response data: ${response.data}');
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logger.error(
      '❌ [${err.type}] ${err.requestOptions.uri}',
      err,
      err.stackTrace,
    );
    return handler.next(err);
  }
}
