import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/responsive/breakpoints.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/widgets/appbar/appbar.dart';
import 'package:site/app/widgets/drawer/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Widget> items;
  final itemScrollController = ItemScrollController();
  final itemPositionsListener = ItemPositionsListener.create();

  @override
  void initState() {
    super.initState();
    items = AppListWidgets.homePageWidgetList;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isToShowDrawer = constraints.maxWidth < Breakpoints.appBar;
        developer.log('Constraints: $constraints');
        return Scaffold(
          appBar: CustomAppBar(itemScrollController),
          drawer: isToShowDrawer ? CustomDrawer(itemScrollController) : null,
          body: ScrollablePositionedList.builder(
            itemCount: items.length,
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
            itemBuilder: (context, index) => items[index],
          ),
        );
      },
    );
  }
}
