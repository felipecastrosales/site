import 'package:flutter/material.dart';

class SectionSubtitle extends StatelessWidget {
  const SectionSubtitle({
    super.key,
    required this.title,
    required this.paddingTop,
    required this.paddingBottom,
  });

  final String title;
  final double paddingTop;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
