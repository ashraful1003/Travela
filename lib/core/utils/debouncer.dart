import 'dart:async';

/// Simple debouncer utility to debounce frequent calls (e.g., text input).
class Debouncer {
  final Duration delay;
  Timer? _timer;

  /// Creates a [Debouncer] with the given [delay].
  Debouncer({required this.delay});

  /// Runs [action] after [delay]. If called again before the delay, the
  /// previous scheduled action is cancelled.
  void run(void Function() action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }

  /// Cancel any pending action.
  void cancel() {
    _timer?.cancel();
    _timer = null;
  }
}
