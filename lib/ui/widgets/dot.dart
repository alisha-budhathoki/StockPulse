import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({super.key, this.radius = 4.0, this.color});

  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
    );
  }
}
