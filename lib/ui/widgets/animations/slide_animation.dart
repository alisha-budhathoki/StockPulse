import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/widgets/index.dart';

class SlideAnimation extends StatelessWidget {
  const SlideAnimation({
    super.key,
    required this.begin,
    this.end = Offset.zero,
    this.curve,
    this.durationMs,
    required this.child,
  });

  final Offset begin;
  final Offset end;
  final Widget child;
  final Curve? curve;
  final int? durationMs;

  @override
  Widget build(BuildContext context) {
    return BaseAnimation<Offset>(
      begin: begin,
      end: end,
      curve: curve,
      durationMs: durationMs,
      builder: (animation) {
        return SlideTransition(
          position: animation,
          child: child,
        );
      },
    );
  }
}
