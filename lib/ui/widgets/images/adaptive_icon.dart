import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/widgets/index.dart';

class AdaptiveIcon extends StatelessWidget {
  const AdaptiveIcon({
    super.key,
    this.imageUrl,
    this.icon,
    this.color,
    this.packageName,
    this.fit = BoxFit.scaleDown,
    this.width = 16.0,
    this.height = 16.0,
  }) : assert(
          imageUrl != null || icon != null,
          'Either imageUrl or icon should be provided.',
        );

  final String? imageUrl;
  final String? packageName;
  final double width;
  final double height;
  final Color? color;
  final IconData? icon;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return Icon(
        icon,
        color: color,
        size: math.max(width, height),
      );
    }

    return AdaptiveImage(
      imageUrl: imageUrl!,
      width: width,
      height: height,
      color: color,
      fit: fit,
      packageName: packageName,
    );
  }
}
