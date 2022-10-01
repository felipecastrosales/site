import 'package:flutter/material.dart';

extension MediaQueryExt on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;

  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;
}
