import 'package:flutter/material.dart';

/// For creating a animated digit widget
class AnimatedDigit extends StatelessWidget {
  final int number;
  final String preText;
  final String postText;
  final TextStyle style;

  const AnimatedDigit({
    super.key,
    required this.number,
    required this.style,
    this.preText = '',
    this.postText = '',
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      tween: IntTween(begin: 0, end: number),
      duration: const Duration(seconds: 2),
      curve: Curves.ease,
      builder: (context, value, child) {
        return Text(
          '$preText$value$postText',
          textAlign: TextAlign.center,
          style: style,
        );
      },
    );
  }
}
