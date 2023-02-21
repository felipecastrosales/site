import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:http/http.dart' as http;
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/injections/injections.dart';
import 'package:site/app/core/responsive/breakpoints.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/widgets/appbar/app_bar.dart';
import 'package:site/app/widgets/drawer/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
    FirebaseRemoteConfig? firebaseRemoteConfig,
    http.Client? httpClient,
  })  : _firebaseRemoteConfig = firebaseRemoteConfig ?? getIt(),
        _httpClient = httpClient ?? getIt();

  final FirebaseRemoteConfig _firebaseRemoteConfig;
  final http.Client _httpClient;

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
    items = AppListWidgets().homePageWidgetList(
      firebaseRemoteConfig: widget._firebaseRemoteConfig,
      httpClient: widget._httpClient,
      itemScrollController: itemScrollController,
    );
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
