import 'package:flutter/material.dart';

class ImageUtils extends StatelessWidget {
  const ImageUtils(
    this.image, {
    super.key,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.filterQuality = FilterQuality.high,
    this.height,
    this.width,
  });

  final String image;
  final BoxFit fit;
  final Alignment alignment;
  final FilterQuality filterQuality;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: fit,
      alignment: alignment,
      filterQuality: filterQuality,
      height: height ?? MediaQuery.of(context).size.height,
      width: width ?? MediaQuery.of(context).size.width,
    );
  }
}
