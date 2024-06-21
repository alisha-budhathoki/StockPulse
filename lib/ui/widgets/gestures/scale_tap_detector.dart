import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:stock_pulse/core/platform_extensions.dart';
import 'package:stock_pulse/ui/ui.dart';

class ScaleTapDetector extends StatefulWidget {
  const ScaleTapDetector({
    super.key,
    required this.child,
    this.duration,
    this.scaleMinValue,
    this.opacityMinValue,
    this.scaleCurve,
    this.opacityCurve,
    this.mouseCursor,
    this.onTap,
    this.onLongPress,
    this.onTapDown,
  });

  final Widget child;
  final Duration? duration;
  final Curve? scaleCurve;
  final double? scaleMinValue;
  final Curve? opacityCurve;
  final double? opacityMinValue;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final MouseCursor? mouseCursor;
  final void Function(TapDownDetails tapDownDetails)? onTapDown;

  @override
  State<ScaleTapDetector> createState() => _ScaleTapState();
}

class _ScaleTapState extends State<ScaleTapDetector>
    with SingleTickerProviderStateMixin {
  static final double _defaultScaleMin =
      PlatformExtensions.isMobile ? 0.97 : 0.99;
  static const double _defaultOpacityMin = 0.9;
  static final Curve _defaultScaleCurve = CurveSpring();
  static const Curve _defaultOpacityCurve = Curves.ease;
  static const Duration _defaultDuration = Duration(milliseconds: 300);

  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  bool _isAnimationControllerDisposed = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 1.0).animate(_animationController);
    _opacityAnimation =
        Tween<double>(begin: 1.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _isAnimationControllerDisposed = true;
    super.dispose();
  }

  void animate({double? scale, double? opacity}) {
    if (_isAnimationControllerDisposed) return;

    _animationController.stop();
    _animationController.duration = widget.duration ?? _defaultDuration;

    _scaleAnimation = Tween<double>(
      begin: _scaleAnimation.value,
      end: scale,
    ).animate(
      CurvedAnimation(
        curve: widget.scaleCurve ?? _defaultScaleCurve,
        parent: _animationController,
      ),
    );

    _opacityAnimation = Tween<double>(
      begin: _opacityAnimation.value,
      end: opacity,
    ).animate(
      CurvedAnimation(
        curve: widget.opacityCurve ?? _defaultOpacityCurve,
        parent: _animationController,
      ),
    );

    _animationController
      ..reset()
      ..forward();
  }

  Future<void> _onTapDown(_) async {
    animate(
      scale: widget.scaleMinValue ?? _defaultScaleMin,
      opacity: widget.opacityMinValue ?? _defaultOpacityMin,
    );
  }

  void _onTapUp(_) {
    animate(scale: 1.0, opacity: 1.0);
  }

  @override
  Widget build(BuildContext context) {
    final isTapEnabled = widget.onTap != null ||
        widget.onLongPress != null ||
        widget.onTapDown != null;

    final effectiveMouseCursor = widget.mouseCursor ??
        (isTapEnabled ? SystemMouseCursors.click : SystemMouseCursors.basic);

    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, child) {
        return AnimatedOpacity(
          duration: widget.duration ?? _defaultDuration,
          opacity: _opacityAnimation.value,
          child: Transform.scale(
            scale: _scaleAnimation.value,
            child: child,
          ),
        );
      },
      child: Listener(
        onPointerDown: isTapEnabled ? _onTapDown : null,
        onPointerCancel: _onTapUp,
        onPointerUp: _onTapUp,
        child: DefaultSelectionStyle(
          mouseCursor: effectiveMouseCursor,
          selectionColor: Palette.primaryDark.shade1,
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              child: MouseRegion(
                child: widget.child,
                cursor: effectiveMouseCursor,
              ),
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              mouseCursor: effectiveMouseCursor,
              borderRadius: BorderRadius.circular(8.0),
              onTap: isTapEnabled ? () => widget.onTap?.call() : null,
              onLongPress: isTapEnabled ? widget.onLongPress : null,
              onTapDown: isTapEnabled
                  ? (tapDownDetails) => widget.onTapDown?.call(tapDownDetails)
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}

class CurveSpring extends Curve {
  CurveSpring()
      : sim = SpringSimulation(
          SpringDescription.withDampingRatio(
            mass: 1,
            ratio: 0.7,
            stiffness: 70,
          ),
          0.0,
          1.0,
          0.0,
        );

  final SpringSimulation sim;

  @override
  double transform(double t) => sim.x(t) + t * (1 - sim.x(1.0));
}
