import 'package:flutter/material.dart';

class ScaleAnimatedSwitcher extends StatelessWidget {
  const ScaleAnimatedSwitcher({
    super.key,
    required this.child,
    this.durationMs = 200,
    this.alignment = Alignment.center,
  });

  final Widget child;
  final int durationMs;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      child: child,
      switchInCurve: Curves.easeOutCubic,
      switchOutCurve: Curves.easeInCubic,
      duration: Duration(milliseconds: durationMs),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            child: child,
            scale: animation,
            alignment: alignment,
          ),
        );
      },
    );
  }
}
