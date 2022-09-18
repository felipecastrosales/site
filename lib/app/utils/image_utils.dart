import 'package:flutter/material.dart';

class ImageUtils extends StatelessWidget {
  const ImageUtils({
    super.key,
    required this.image,
    required this.fit,
    required this.width,
    required this.height,
    this.alignment = Alignment.center,
    this.filterQuality = FilterQuality.high,
  });

  final String image;
  final BoxFit fit;
  final double width;
  final double height;
  final Alignment alignment;
  final FilterQuality filterQuality;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: fit,
      height: height,
      width: width,
      alignment: alignment,
      filterQuality: filterQuality,
    );
  }
}
