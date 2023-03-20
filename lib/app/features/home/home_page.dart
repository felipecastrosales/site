import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:http/http.dart' as http;
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/injections/injections.dart';
import 'package:site/app/core/responsive/responsive.dart';
import 'package:site/app/features/home/widgets/contact/contact_widget.dart';
import 'package:site/app/features/home/widgets/contact/controller/contact_controller.dart';
import 'package:site/app/features/home/widgets/experience/experience.dart';
import 'package:site/app/features/home/widgets/footer/footer.dart';
import 'package:site/app/features/home/widgets/presentation/presentation.dart';
import 'package:site/app/features/home/widgets/projects/projects.dart';
import 'package:site/app/features/home/widgets/social/social.dart';
import 'package:site/app/widgets/app_bar/app_bar.dart';
import 'package:site/app/widgets/drawer/drawer.dart';
import 'package:site/data/repositories/contact/contact.dart';

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
    items = [
      Presentation(itemScrollController),
      const Projects(),
      const Experience(),
      const Social(),
      ContactWidget(
        contactController: ContactController(
          contactRepository: ContactRepositoryImpl(
            firebaseRemoteConfig: widget._firebaseRemoteConfig,
            httpClient: widget._httpClient,
          ),
        ),
      ),
      const CustomFooter(),
    ];
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
