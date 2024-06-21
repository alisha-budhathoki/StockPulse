import 'package:flutter/material.dart';

class FadeAnimatedSwitcher extends StatelessWidget {
  const FadeAnimatedSwitcher({
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
          child: child,
        );
      },
    );
  }
}
