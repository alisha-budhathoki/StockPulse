import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MultiTapDetector extends StatelessWidget {
  const MultiTapDetector({
    super.key,
    required this.child,
    required this.tapCount,
    this.behavior,
    this.onTap,
    this.onTapCountComplete,
  });

  final int tapCount;
  final Widget child;
  final HitTestBehavior? behavior;
  final void Function(int)? onTap;
  final VoidCallback? onTapCountComplete;

  @override
  Widget build(BuildContext context) {
    return RawGestureDetector(
      behavior: behavior,
      child: child,
      gestures: {
        SerialTapGestureRecognizer:
            GestureRecognizerFactoryWithHandlers<SerialTapGestureRecognizer>(
          SerialTapGestureRecognizer.new,
          (instance) {
            instance.onSerialTapDown = (details) {
              onTap?.call(details.count);
              if (details.count == tapCount) onTapCountComplete?.call();
            };
          },
        ),
      },
    );
  }
}
