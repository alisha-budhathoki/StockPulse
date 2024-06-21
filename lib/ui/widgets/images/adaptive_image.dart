import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_pulse/ui/ui.dart';

class AdaptiveImage extends StatefulWidget {
  const AdaptiveImage({
    required this.imageUrl,
    super.key,
    this.width,
    this.height,
    this.packageName,
    this.fit = BoxFit.cover,
    this.color = Colors.transparent,
  });

  final String imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Color? color;
  final String? packageName;

  @override
  State<AdaptiveImage> createState() => _AdaptiveImageState();
}

class _AdaptiveImageState extends State<AdaptiveImage> {
  late Future<ImageProvider>
      rasterImageProviderFuture; //State variable for our future

  @override
  void initState() {
    super.initState();
    if (getImageRenderType(widget.imageUrl) == ImageRenderType.raster)
      rasterImageProviderFuture = getRasterImageProvider(
        widget.imageUrl,
        packageName: widget.packageName,
      );
  }

  @override
  void didUpdateWidget(covariant AdaptiveImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (getImageRenderType(widget.imageUrl) == ImageRenderType.raster)
      rasterImageProviderFuture = getRasterImageProvider(
        widget.imageUrl,
        packageName: widget.packageName,
      );
  }

  @override
  Widget build(BuildContext context) {
    final imageRenderType = getImageRenderType(widget.imageUrl);

    return (imageRenderType == ImageRenderType.vector)
        ? _buildVectorImage()
        : FutureBuilder<ImageProvider>(
            future: rasterImageProviderFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return _buildErrorWidget(context);
              } else if (snapshot.hasData) {
                final imageProvider = snapshot.data!;
                return _buildRasterImage(imageProvider);
              } else {
                return const SizedBox();
              }
            },
          );
  }

  Widget _buildVectorImage() {
    return _AdaptiveVectorImage(
      fit: widget.fit,
      color: widget.color,
      width: widget.width,
      height: widget.height,
      bytesLoader: getVectorImageProvider(
        widget.imageUrl,
        packageName: widget.packageName,
      ),
    );
  }

  Widget _buildRasterImage(ImageProvider imageProvider) {
    return _AdaptiveRasterImage(
      fit: widget.fit,
      color: widget.color,
      width: widget.width,
      height: widget.height,
      imageProvider: imageProvider,
    );
  }

  Widget _buildErrorWidget(BuildContext context) {
    return Center(
      child: ScaleAnimation(
        child: Icon(
          Icons.error_outline,
          size: 24.0,
          color: Palette.textDisabled.shade5,
        ),
      ),
    );
  }
}

class _AdaptiveVectorImage extends StatelessWidget {
  const _AdaptiveVectorImage({
    required this.fit,
    required this.width,
    required this.height,
    required this.bytesLoader,
    this.color,
  });

  final BoxFit fit;
  final double? width;
  final double? height;
  final Color? color;
  final BytesLoader bytesLoader;

  @override
  Widget build(BuildContext context) {
    return SvgPicture(
      bytesLoader,
      width: width,
      height: height,
      fit: fit,
      placeholderBuilder: (_) => const ShimmerLoadingIndicator(),
      colorFilter: color == null
          ? null
          : ColorFilter.mode(
              color!,
              BlendMode.srcATop,
            ),
    );
  }
}

class _AdaptiveRasterImage extends StatelessWidget {
  const _AdaptiveRasterImage({
    required this.fit,
    required this.width,
    required this.height,
    required this.imageProvider,
    this.color,
  });

  final BoxFit fit;
  final double? width;
  final double? height;
  final Color? color;
  final ImageProvider<Object> imageProvider;

  @override
  Widget build(BuildContext context) {
    return Image(
      color: color,
      width: width,
      height: height,
      fit: fit,
      colorBlendMode: BlendMode.srcATop,
      errorBuilder: _buildError,
      frameBuilder: _buildPlaceholder,
      image: imageProvider,
    );
  }

  Widget _buildPlaceholder(
    BuildContext context,
    Widget child,
    int? frame,
    bool isSync,
  ) {
    if (isSync) return _buildImage(child);
    return frame != null
        ? _buildImage(child)
        : ShimmerLoadingIndicator(width: width, height: height);
  }

  Widget _buildImage(Widget image) {
    return ScaleAnimation(begin: 1.05, child: image);
  }

  Widget _buildError(
    BuildContext context,
    Object exception,
    StackTrace? stackTrace,
  ) {
    return Center(
      child: ScaleAnimation(
        child: Icon(
          Icons.error_outline,
          size: 24.0,
          color: Palette.textDisabled.shade3,
        ),
      ),
    );
  }
}
