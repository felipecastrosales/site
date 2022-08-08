import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  final double height;
  final Color color;

  const CustomDivider({
    Key? key,
    required this.height,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: height,
      color: color,
    );
  }
}
