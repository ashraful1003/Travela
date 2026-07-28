import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:travela/core/network/stream_client.dart';

/// Dio-based SSE StreamClient implementation. Parses text/event-stream frames
/// into [SseEvent] objects. This utility is internal to the Data layer and
/// does not leak Dio types to Domain or Presentation.
class StreamClientImpl implements StreamClient {
  final Dio _dio;

  StreamClientImpl(this._dio);

  @override
  Stream<SseEvent> sse(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async* {
    final CancelToken cancelToken = CancelToken();
    StreamSubscription<List<int>>? subscription;
    final StreamController<SseEvent> controller = StreamController<SseEvent>(
      onCancel: () {
        if (!cancelToken.isCancelled) {
          cancelToken.cancel('client cancelled');
        }
      },
    );

    try {
      final Response<ResponseBody> res = await _dio.get<ResponseBody>(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers, responseType: ResponseType.stream),
        cancelToken: cancelToken,
      );

      // Response body is a stream of bytes.
      final Stream<List<int>> byteStream = res.data!.stream;

      // Buffer to accumulate text until an event separator (\n\n).
      final StringBuffer buf = StringBuffer();

      subscription = byteStream.listen(
        (List<int> chunk) {
          try {
            buf.write(utf8.decode(chunk));

            while (true) {
              final String full = buf.toString();
              final int idx = full.indexOf('\n\n');
              if (idx == -1) {
                break;
              }

              final String rawEvent = full.substring(0, idx);
              buf.clear();
              if (idx + 2 < full.length) {
                buf.write(full.substring(idx + 2));
              }

              controller.add(_parseFrame(rawEvent));
            }
          } catch (e, st) {
            controller.addError(e, st);
          }
        },
        onError: controller.addError,
        onDone: controller.close,
        cancelOnError: true,
      );

      yield* controller.stream;
    } catch (e) {
      // If the request failed immediately (connection refused, timeout,
      // DNS failure, etc.), surface it as a stream error.
      yield* Stream<SseEvent>.error(e);
    } finally {
      await subscription?.cancel();
    }
  }

  /// Parses a single raw SSE frame (the text between two `\n\n` separators)
  /// into an [SseEvent], extracting the optional `event:` line and
  /// concatenating all `data:` lines per the SSE spec.
  SseEvent _parseFrame(String rawEvent) {
    final List<String> lines = rawEvent.split(RegExp(r'\r?\n'));
    String? eventType;
    final StringBuffer dataBuf = StringBuffer();

    for (final String line in lines) {
      if (line.startsWith('event:')) {
        eventType = line.substring('event:'.length).trim();
      } else if (line.startsWith('data:')) {
        dataBuf.writeln(line.substring('data:'.length).trim());
      }
    }

    return SseEvent(event: eventType, data: dataBuf.toString().trimRight());
  }
}
