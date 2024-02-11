import 'package:flutter/material.dart';

class ColumnScrollable extends StatelessWidget {
  const ColumnScrollable({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: children,
      ),
    );
  }
}
