import 'package:flutter/material.dart';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:http/http.dart' as http;

import 'package:site/app/features/home/widgets/contact/contact_widget.dart';
import 'package:site/app/features/home/widgets/contact/controller/contact_controller.dart';
import 'package:site/app/features/home/widgets/experience/experience.dart';
import 'package:site/app/features/home/widgets/footer/footer.dart';
import 'package:site/app/features/home/widgets/presentation/presentation.dart';
import 'package:site/app/features/home/widgets/projects/projects.dart';
import 'package:site/app/features/home/widgets/social/social.dart';
import 'package:site/data/repositories/contact/contact.dart';

class AppListWidgets {
  // static final homePageWidgetList = <Widget>[
  //   const Presentation(),
  //   const Projects(),
  //   const Experience(),
  //   const Social(),
  //   Contact(
  //     contactController: ContactController(
  //       contactRepository: ContactRepositoryImpl(
  //         firebaseRemoteConfig: getIt(),
  //         httpClient: getIt(),
  //       ),
  //     ),
  //   ),
  //   const CustomFooter(),
  // ];

  List<Widget> homePageWidgetList(
    FirebaseRemoteConfig firebaseRemoteConfig,
    http.Client httpClient,
  ) {
    return [
      const Presentation(),
      const Projects(),
      const Experience(),
      const Social(),
      ContactWidget(
        contactController: ContactController(
          contactRepository: ContactRepositoryImpl(
            firebaseRemoteConfig: firebaseRemoteConfig,
            httpClient: httpClient,
          ),
        ),
      ),
      const CustomFooter(),
    ];
  }
}
