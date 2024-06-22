import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/theme/palette.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.labelText,
    this.icon,
    this.iconPosition = IconPosition.left,
    required this.borderRadius,
    required this.size,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
  });

  final VoidCallback? onPressed;
  final String labelText;
  final Widget? icon;
  final IconPosition iconPosition;
  final double borderRadius;
  final ButtonSize size;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final widgets = <Widget>[
      if (icon != null) ...[icon!, const SizedBox(width: 4.0)],
      Flexible(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            labelText,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    ];

    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: iconPosition == IconPosition.left
            ? widgets
            : widgets.reversed.toList(),
      ),
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(buttonProperties[size]?.textStyle),
        padding: WidgetStateProperty.all(buttonProperties[size]?.padding),
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        foregroundColor: WidgetStateProperty.all(foregroundColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(color: borderColor ?? Palette.transparent),
          ),
        ),
      ),
    );
  }
}

enum ButtonSize { large, medium, small }

enum IconPosition { left, right }

class ButtonProperties {
  ButtonProperties({
    required this.padding,
    required this.textStyle,
  });

  final EdgeInsets padding;
  final TextStyle textStyle;
}

Map<ButtonSize, ButtonProperties> buttonProperties = {
  ButtonSize.large: ButtonProperties(
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
    textStyle: const TextStyle(fontSize: 18.0),
  ),
  ButtonSize.medium: ButtonProperties(
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
    textStyle: const TextStyle(fontSize: 16.0),
  ),
  ButtonSize.small: ButtonProperties(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
    textStyle: const TextStyle(fontSize: 14.0),
  ),
};
