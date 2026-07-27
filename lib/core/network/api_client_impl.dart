import 'package:dio/dio.dart';
import 'package:travela/core/errors/network_exception.dart';
import 'package:travela/core/errors/parsing_exception.dart';
import 'package:travela/core/errors/server_exception.dart';
import 'package:travela/core/errors/unknown_exception.dart';
import 'package:travela/core/logger/logger_interface.dart';
import 'package:travela/core/network/api_client.dart';

/// Concrete implementation of [ApiClient] that wraps a Dio instance. It
/// converts Dio responses into plain Dart objects and maps Dio errors into
/// project-specific exceptions so upper layers never see Dio types.
class ApiClientImpl implements ApiClient {
  final Dio _dio;
  final LoggerInterface _logger;

  /// Creates an [ApiClientImpl].
  ApiClientImpl(this._dio, this._logger);

  @override
  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response<dynamic> res = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
        cancelToken: cancelToken,
      );
      return _processResponse<T>(res);
    } on DioException catch (e) {
      _logger.error('GET request failed: $path', e, e.stackTrace);
      throw _mapDioError(e);
    }
  }

  @override
  Future<T> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response<dynamic> res = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
        cancelToken: cancelToken,
      );
      return _processResponse<T>(res);
    } on DioException catch (e) {
      _logger.error('POST request failed: $path', e, e.stackTrace);
      throw _mapDioError(e);
    }
  }

  @override
  Future<T> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response<dynamic> res = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
        cancelToken: cancelToken,
      );
      return _processResponse<T>(res);
    } on DioException catch (e) {
      _logger.error('PUT request failed: $path', e, e.stackTrace);
      throw _mapDioError(e);
    }
  }

  @override
  Future<T> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response<dynamic> res = await _dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
        cancelToken: cancelToken,
      );
      return _processResponse<T>(res);
    } on DioException catch (e) {
      _logger.error('PATCH request failed: $path', e, e.stackTrace);
      throw _mapDioError(e);
    }
  }

  @override
  Future<T> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response<dynamic> res = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
        cancelToken: cancelToken,
      );
      return _processResponse<T>(res);
    } on DioException catch (e) {
      _logger.error('DELETE request failed: $path', e, e.stackTrace);
      throw _mapDioError(e);
    }
  }

  T _processResponse<T>(Response<dynamic> res) {
    // If expected type is Response, cast directly
    if (T == Response || T == dynamic) {
      return res.data as T;
    }

    // If response is null, return null casted
    final Object? data = res.data;
    if (data == null) {
      return data as T;
    }

    // If T is primitive (String, int, bool) or Map/List, attempt cast
    try {
      return data as T;
    } catch (e) {
      // If cast fails, signal parsing issue
      throw const ParsingException('Failed to parse response');
    }
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

    if (err.type == DioExceptionType.cancel) {
      return const NetworkException('Request cancelled');
    }

    if (err.type == DioExceptionType.unknown) {
      return UnknownException(err.error, err.stackTrace);
    }

    return UnknownException(err.error, err.stackTrace);
  }
}
