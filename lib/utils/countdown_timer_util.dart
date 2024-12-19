import 'dart:async';
import 'dart:ui';

class CountdownTimerUtil {
  CountdownTimerUtil({
    required this.onTick,
    required this.onComplete,
  });

  static const int tickIntervalMs = 50;

  final void Function(Duration) onTick;
  final VoidCallback onComplete;

  Timer? _timer;
  late Duration _remainingTime;
  late DateTime _lastTick;

  // ignore: avoid_setters_without_getters
  set initialDuration(Duration duration) {
    _remainingTime = duration;
  }

  void start() {
    _timer?.cancel();
    _lastTick = DateTime.now();
    _timer = Timer.periodic(
      const Duration(milliseconds: tickIntervalMs),
      (timer) {
        final now = DateTime.now();
        final elapsed = now.difference(_lastTick);
        _lastTick = now;

        if (_remainingTime.inMilliseconds > 0) {
          _remainingTime -= elapsed;
          if (_remainingTime.inMilliseconds <= 0) {
            _remainingTime = Duration.zero;
            onComplete();
            timer.cancel();
          } else {
            onTick(_remainingTime);
          }
        } else {
          onComplete();
          timer.cancel();
        }
      },
    );
  }

  void pause() {
    _timer?.cancel();
  }

  void resume() {
    _lastTick = DateTime.now();
    start();
  }

  void stop() {
    _timer?.cancel();
  }
}
