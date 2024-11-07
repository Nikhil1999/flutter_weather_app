import 'package:flutter/material.dart';

/// Contents all styles related to app
class StyleConfig {
  const StyleConfig._();

  static const text = _AppTextStyle();
}

class _AppTextStyle {
  const _AppTextStyle();

  final TextStyle style = const TextStyle(
    letterSpacing: 0.0,
  );
}
