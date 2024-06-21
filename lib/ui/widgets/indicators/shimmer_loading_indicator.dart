import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stock_pulse/ui/ui.dart';

class ShimmerLoadingIndicator extends StatelessWidget {
  const ShimmerLoadingIndicator({
    super.key,
    this.width,
    this.height,
    this.borderRadius = 8.0,
  });

  final double? width;
  final double? height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final baseColor = Palette.textDisabled.shade3;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: baseColor.withOpacity(0.5),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: baseColor.withOpacity(0.25),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
