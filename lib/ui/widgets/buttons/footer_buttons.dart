import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/ui.dart';

class FooterButtons extends StatelessWidget {
  const FooterButtons({
    super.key,
    required this.buttons,
    this.showDivider = true,
    this.padding = const EdgeInsets.all(16.0),
  });

  final List<Widget> buttons;
  final EdgeInsets padding;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SlideAnimation(
          begin: const Offset(0.0, 1.0),
          child: Padding(
            padding: padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: buttons,
            ),
          ),
        ),
      ],
    );
  }
}
