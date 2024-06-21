import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/widgets/index.dart';

enum StaggeredAnimationType { scale, slide }

class StaggeredList extends StatelessWidget {
  const StaggeredList({
    super.key,
    required this.children,
    this.physics,
    this.reverse = false,
    this.controller,
    this.shrinkWrap = false,
    this.padding = EdgeInsets.zero,
    this.animationType = StaggeredAnimationType.slide,
    this.scrollDirection = Axis.vertical,
    this.separator = const SizedBox(),
  });

  final bool shrinkWrap;
  final bool reverse;
  final EdgeInsets padding;
  final List<Widget> children;
  final ScrollPhysics? physics;
  final StaggeredAnimationType animationType;
  final Axis scrollDirection;
  final Widget separator;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: padding,
      reverse: reverse,
      physics: physics,
      controller: controller,
      shrinkWrap: shrinkWrap,
      itemCount: children.length,
      scrollDirection: scrollDirection,
      separatorBuilder: (_, __) => separator,
      itemBuilder: (context, index) => _getAnimatedChild(index),
    );
  }

  Widget _getAnimatedChild(int index) {
    switch (animationType) {
      case StaggeredAnimationType.scale:
        return ScaleAnimation(
          durationMs: 300 + (index * 50),
          child: children[index],
        );
      case StaggeredAnimationType.slide:
        final offset = (index * 0.5) + 0.5;
        return SlideAnimation(
          child: children[index],
          begin: scrollDirection == Axis.horizontal
              ? Offset(offset, 0.0)
              : Offset(0.0, offset),
        );
    }
  }
}
