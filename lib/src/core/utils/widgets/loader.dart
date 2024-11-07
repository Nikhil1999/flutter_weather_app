import 'package:flutter/material.dart';

/// Common loader for showing progress
class Loader extends StatelessWidget {
  final Color? color;

  const Loader({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(
          color: color,
          strokeCap: StrokeCap.round,
          strokeWidth: 4.0,
        ),
      ],
    );
  }
}
