import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/ui.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.labelText,
    this.onPressed,
    this.icon,
    this.borderRadius = 8.0,
    this.size = ButtonSize.small,
    this.state = ButtonState.regular,
    this.iconPosition = IconPosition.left,
    this.backgroundColor,
    this.foregroundColor,
  });
  final VoidCallback? onPressed;
  final String labelText;
  final Widget? icon;
  final double borderRadius;
  final IconPosition iconPosition;
  final ButtonSize size;
  final ButtonState state;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      labelText: labelText,
      icon: icon,
      borderRadius: borderRadius,
      size: size,
      state: state,
      iconPosition: iconPosition,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
    );
  }
}
