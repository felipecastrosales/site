/// -> This widget is used to wrap a widget with a SingleChildScrollView without scroll.
///
/// I make this, because in some cases,
/// the widget test complains that the Column doesn't fit and needs a scroll.
///
/// e.g:
///
/// The overflowing RenderFlex has an orientation of Axis.vertical.
/// The edge of the RenderFlex that is overflowing has been marked in the rendering with a yellow and
/// black striped pattern. This is usually caused by the contents being too big for the RenderFlex.

import 'package:flutter/material.dart';

class SingleChildScrollViewWithoutScroll extends StatelessWidget {
  const SingleChildScrollViewWithoutScroll({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: child,
    );
  }
}
