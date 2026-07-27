import 'package:dio/dio.dart';
import 'package:travela/core/config/environment.dart';
import 'package:travela/core/logger/logger_interface.dart';
import 'package:travela/core/network/interceptors/error_interceptor.dart';
import 'package:travela/core/network/interceptors/header_interceptor.dart';
import 'package:travela/core/network/interceptors/logging_interceptor.dart';

/// Factory responsible for creating and configuring Dio instances used across
/// the application. It wires timeouts, base options and attaches provided
/// interceptors. The returned Dio should be registered as a singleton in DI.
Dio createDio(Environment env, LoggerInterface logger) {
  final BaseOptions baseOptions = BaseOptions(
    baseUrl: env.baseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 15),
    sendTimeout: const Duration(seconds: 10),
    responseType: ResponseType.json,
    headers: <String, dynamic>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
  );

  final Dio dio = Dio(baseOptions);

  // Attach modular interceptors. Order matters: headers -> logging -> error
  dio.interceptors.add(HeaderInterceptor());
  dio.interceptors.add(LoggingInterceptor(logger));
  dio.interceptors.add(ErrorInterceptor(logger));

  return dio;
}
