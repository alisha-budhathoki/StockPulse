import 'package:flutter/material.dart';
import 'package:stock_pulse/ui/theme/theme.dart';
import 'package:stock_pulse/ui/widgets/index.dart';

class ImageIndicator extends StatelessWidget {
  const ImageIndicator({
    super.key,
    required this.message,
    this.imageUrl,
    this.icon,
    this.title = '',
    this.label = 'TRY AGAIN',
    this.titleColor,
    this.onLabelPressed,
    this.packageName,
    this.child,
    this.imageSize,
  });

  final String title;
  final String? imageUrl;
  final IconData? icon;
  final Color? titleColor;
  final String message;
  final String label;
  final Widget? child;
  final VoidCallback? onLabelPressed;
  final String? packageName;
  final Size? imageSize;

  @override
  Widget build(BuildContext context) {
    return ScaleAnimation(
      begin: 0.7,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (imageUrl != null || icon != null) _buildImage(context),
              const SizedBox(height: 16.0),
              if (title.isNotEmpty) _buildTitle(context, title),
              _buildDescription(context, message),
              const SizedBox(height: 4.0),
              if (child != null)
                child!
              else if (onLabelPressed != null)
                _buildLabel(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AdaptiveIcon(
      imageUrl: imageUrl,
      icon: icon,
      fit: BoxFit.cover,
      packageName: packageName,
      width: imageSize?.width ?? size.width * 0.5,
      height: imageSize?.height ?? size.height * 0.2,
    );
  }

  Widget _buildTitle(BuildContext context, String title) {
    return Text(
      title,
      style: TextStyles.h4.withColor(titleColor ?? Palette.errorDark.shade3),
    );
  }

  Widget _buildDescription(BuildContext context, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: TextStyles.bodyText2,
      ),
    );
  }

  Widget _buildLabel(BuildContext context) {
    return GhostButton(
      labelText: label,
      onPressed: onLabelPressed,
    );
  }
}
