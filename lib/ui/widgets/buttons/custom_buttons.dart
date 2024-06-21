import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/ui.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.labelText,
    this.icon,
    this.iconPosition,
    required this.borderRadius,
    required this.size,
    this.type = ButtonType.primary,
    this.state = ButtonState.regular,
    this.backgroundColor,
    this.foregroundColor,
  });

  final VoidCallback? onPressed;
  final String labelText;
  final Widget? icon;
  final double borderRadius;
  final IconPosition? iconPosition;
  final ButtonSize size;
  final ButtonType type;
  final ButtonState state;
  final Color? backgroundColor;
  final Color? foregroundColor;

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
        backgroundColor: WidgetStateProperty.resolveWith(
          (state) {
            if (backgroundColor != null) return backgroundColor;

            if (state.contains(WidgetState.disabled)) {
              return backgroundColors[type]![ButtonState.disabled];
            } else if (state.contains(WidgetState.hovered) ||
                state.contains(WidgetState.focused)) {
              return backgroundColors[type]![ButtonState.focused];
            }

            return backgroundColors[type]![ButtonState.regular];
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (state) {
            if (foregroundColor != null) return foregroundColor;

            if (state.contains(WidgetState.disabled)) {
              return textColors[type]![ButtonState.disabled];
            } else if (state.contains(WidgetState.hovered) ||
                state.contains(WidgetState.focused)) {
              return textColors[type]![ButtonState.focused];
            }

            return textColors[type]![ButtonState.regular];
          },
        ),
        shape: WidgetStateProperty.resolveWith(
          (state) {
            if (foregroundColor != null) return _getShape(foregroundColor!);

            if (state.contains(WidgetState.disabled)) {
              return _getShape(borderColors[type]![ButtonState.disabled]!);
            } else if (state.contains(WidgetState.focused) ||
                state.contains(WidgetState.hovered)) {
              return _getShape(borderColors[type]![ButtonState.focused]!);
            }

            return _getShape(borderColors[type]![ButtonState.regular]!);
          },
        ),
      ),
    );
  }

  RoundedRectangleBorder _getShape(Color color) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      side: BorderSide(
        color: color,
      ),
    );
  }
}

enum ButtonSize { large, medium, small }

enum IconPosition { left, right }

enum ButtonType { primary, secondary, ghost }

enum ButtonState { regular, focused, disabled }

Map<ButtonSize, ButtonProperties> buttonProperties = {
  ButtonSize.large: ButtonProperties(
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
    textStyle: TextStyles.bodyText3.regular,
  ),
  ButtonSize.medium: ButtonProperties(
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
    textStyle: TextStyles.bodyText2.regular,
  ),
  ButtonSize.small: ButtonProperties(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
    textStyle: TextStyles.bodyText2.regular,
  ),
};

class ButtonProperties {
  ButtonProperties({
    required this.padding,
    required this.textStyle,
  });

  final EdgeInsets padding;
  final TextStyle textStyle;
}

Map<ButtonType, Map<ButtonState, Color>> textColors = {
  ButtonType.primary: {
    ButtonState.regular: Palette.light.shade5,
    ButtonState.focused: Palette.light.shade5,
    ButtonState.disabled: Palette.light.shade5,
  },
  ButtonType.secondary: {
    ButtonState.regular: Palette.dark.shade3,
    ButtonState.focused: Palette.dark.shade3,
    ButtonState.disabled: Palette.textDisabled.shade3,
  },
  ButtonType.ghost: {
    ButtonState.regular: Palette.dark.shade3,
    ButtonState.focused: Palette.dark.shade3,
    ButtonState.disabled: Palette.textDisabled.shade3,
  },
};

Map<ButtonType, Map<ButtonState, Color>> backgroundColors = {
  ButtonType.primary: {
    ButtonState.regular: Palette.dark.shade3,
    ButtonState.focused: Palette.dark.shade3,
    ButtonState.disabled: Palette.textDisabled.shade3,
  },
  ButtonType.secondary: {
    ButtonState.regular: Palette.transparent,
    ButtonState.focused: Palette.dark.shade1.withOpacity(0.5),
    ButtonState.disabled: Palette.transparent,
  },
  ButtonType.ghost: {
    ButtonState.regular: Palette.transparent,
    ButtonState.focused: Palette.primaryDark.shade1.withOpacity(0.5),
    ButtonState.disabled: Palette.transparent,
  },
};

Map<ButtonType, Map<ButtonState, Color>> borderColors = {
  ButtonType.primary: {
    ButtonState.regular: Palette.dark.shade3,
    ButtonState.focused: Palette.dark.shade3,
    ButtonState.disabled: Palette.textDisabled.shade3,
  },
  ButtonType.secondary: {
    ButtonState.regular: Palette.dark.shade3,
    ButtonState.focused: Palette.dark.shade3,
    ButtonState.disabled: Palette.textDisabled.shade3,
  },
  ButtonType.ghost: {
    ButtonState.regular: Palette.transparent,
    ButtonState.focused: Palette.transparent,
    ButtonState.disabled: Palette.transparent,
  },
};
