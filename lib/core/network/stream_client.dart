import 'dart:async';

/// Lightweight representation of a single SSE event parsed from the raw
/// text/event-stream.
class SseEvent {
  final String? event;
  final String data;

  SseEvent({required this.data, this.event});
}

/// Abstraction for streaming HTTP clients (SSE). The purpose is to keep
/// streaming responsibilities out of ApiClient which remains focused on
/// request/response semantics.
abstract class StreamClient {
  /// Opens a streaming GET connection to [path] with optional query params
  /// and headers. The returned Stream emits parsed [SseEvent] objects.
  ///
  /// Implementations must provide a mechanism to cancel the underlying
  /// connection when the subscription is cancelled.
  Stream<SseEvent> sse(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });
}
