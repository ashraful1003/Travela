import 'package:dio/dio.dart';

/// Interceptor responsible for setting headers on outgoing requests. This is
/// the extension point where authentication headers (Bearer tokens) can be
/// injected in the future. Keep this class simple and side-effect free.
class HeaderInterceptor extends Interceptor {
  /// Optional async callback to obtain auth headers. Not implemented here —
  /// left as an extension point for future authentication.
  final Future<Map<String, String>> Function()? _authHeaderProvider;

  HeaderInterceptor([this._authHeaderProvider]);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Default headers are provided by BaseOptions; merge any auth headers.
    if (_authHeaderProvider != null) {
      try {
        final Map<String, String> authHeaders = await _authHeaderProvider
            .call();
        options.headers.addAll(authHeaders);
      } catch (_) {
        // If auth provider fails, continue without auth headers.
      }
    }

    return handler.next(options);
  }
}
