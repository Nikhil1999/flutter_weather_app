import 'dart:async';

import 'package:flutter/material.dart';

/// To add debounce login in any async call
class Debouncer {
  Timer? _timer;
  final Duration duration;

  Debouncer({
    required this.duration,
  });

  void cancel() {
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  void run(VoidCallback func) {
    cancel();
    _timer = Timer(duration, func);
  }
}
