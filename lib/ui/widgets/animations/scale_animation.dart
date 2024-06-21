import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/widgets/index.dart';

class ScaleAnimation extends StatelessWidget {
  const ScaleAnimation({
    super.key,
    this.begin = 0.0,
    this.end = 1.0,
    this.alignment = Alignment.center,
    this.curve,
    this.durationMs,
    required this.child,
  });

  final double begin;
  final double end;
  final Widget child;
  final Curve? curve;
  final int? durationMs;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return BaseAnimation<double>(
      begin: begin,
      end: end,
      curve: curve,
      durationMs: durationMs,
      builder: (animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
          alignment: alignment,
        );
      },
    );
  }
}
