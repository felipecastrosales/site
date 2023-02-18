import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider(
    this.height,
    this.color, {
    super.key,
    this.margin = const EdgeInsets.symmetric(vertical: 8),
  });

  final double height;
  final Color color;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      color: color,
    );
  }
}
