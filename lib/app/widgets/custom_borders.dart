import 'package:flutter/material.dart';

class CustomBorders {
  static primaryBorder(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color, width: 1.5),
      );
}
