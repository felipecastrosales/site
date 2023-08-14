import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

mixin ScrollToMixin {
  void scrollTo(int index, ItemScrollController itemScrollController) {
    itemScrollController.scrollTo(
      index: index,
      alignment: 0,
      curve: Curves.easeIn,
      duration: const Duration(milliseconds: 1500),
    );
  }
}
