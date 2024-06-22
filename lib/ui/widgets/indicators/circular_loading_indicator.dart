import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/ui.dart';

class CircularLoadingIndicator extends StatelessWidget {
  const CircularLoadingIndicator({
    super.key,
    this.value,
    this.color,
  });

  final Color? color;
  final double? value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        value: value,
        strokeWidth: 3.0,
        backgroundColor: Palette.background.shade3,
        valueColor: AlwaysStoppedAnimation(color ?? Palette.primary.shade3),
      ),
    );
  }
}
