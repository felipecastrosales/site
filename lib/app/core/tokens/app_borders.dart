import 'package:flutter/material.dart';

class AppBorders {
  static primaryBorder(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color, width: 1.5),
      );
}
