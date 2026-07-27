import 'package:dio/dio.dart';

/// Abstraction over low-level HTTP client. Repositories and data sources
/// should depend on this interface instead of Dio to keep code testable and
/// decoupled from implementation details.
abstract class ApiClient {
  /// Performs a GET request and returns decoded response data.
  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  });

  Future<T> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  });

  Future<T> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  });

  Future<T> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  });

  Future<T> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  });
}
