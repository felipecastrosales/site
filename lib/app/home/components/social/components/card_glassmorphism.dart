import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class CardGlassmorphism extends StatelessWidget {
  final Widget child;

  const CardGlassmorphism({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          height: 50,
          width: 278,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              width: 1,
              color: AppColors.white.withOpacity(.25),
            ),
            gradient: LinearGradient(
              colors: AppGradients.glassmorphic,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
