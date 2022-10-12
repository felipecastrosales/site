import 'package:flutter/material.dart';

extension MediaQueryExt on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;

  double get height => mediaQuerySize.height;

  double get width => mediaQuerySize.width;
}
