import 'dart:typed_data';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:universal_io/io.dart';

enum ImageRenderType { raster, vector }

enum ImageSourceType { asset, network, file, memory }

ImageRenderType getImageRenderType(String imageUrl) {
  if (imageUrl.endsWith('.svg')) {
    return ImageRenderType.vector;
  }
  return ImageRenderType.raster;
}

Future<ImageProvider> getRasterImageProvider(
  String imageUrl, {
  String? packageName,
}) async {
  final imageProviderType = _getImageProviderType(imageUrl);
  if (imageProviderType == ImageSourceType.asset) {
    return AssetImage(imageUrl, package: packageName);
  } else if (imageProviderType == ImageSourceType.network) {
    return ExtendedNetworkImageProvider(imageUrl, cache: true);
  } else if (imageProviderType == ImageSourceType.memory) {
    return MemoryImage(await convertBlobToBytesHttp(imageUrl));
  } else {
    // The dynamic casting is required as a workaround for conflict between `File` class of
    // `package:universal_io` and `dart:io`.
    return ExtendedFileImageProvider(File(imageUrl) as dynamic);
  }
}

Future<Uint8List> convertBlobToBytesHttp(String blobUrl) async {
  final response = await http.get(Uri.parse(blobUrl));
  if (response.statusCode == 200) {
    return response.bodyBytes;
  } else {
    throw Exception('Failed to fetch blob data');
  }
}

BytesLoader getVectorImageProvider(
  String imageUrl, {
  String? packageName,
}) {
  final imageProviderType = _getImageProviderType(imageUrl);
  if (imageProviderType == ImageSourceType.asset) {
    return SvgAssetLoader(
      imageUrl,
      packageName: packageName,
    );
  } else if (imageProviderType == ImageSourceType.network) {
    return SvgNetworkLoader(imageUrl);
  } else {
    // The dynamic casting is required as a workaround for conflict between `File` class of
    // `package:universal_io` and `dart:io`.
    return SvgFileLoader(File(imageUrl) as dynamic);
  }
}

ImageSourceType _getImageProviderType(String imageUrl) {
  if (imageUrl.startsWith('http')) {
    return ImageSourceType.network;
  } else if (imageUrl.startsWith('assets')) {
    return ImageSourceType.asset;
  } else if (imageUrl.startsWith('blob')) {
    return ImageSourceType.memory;
  } else {
    return ImageSourceType.file;
  }
}
