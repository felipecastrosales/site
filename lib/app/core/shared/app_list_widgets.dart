import 'package:flutter/material.dart';

import 'package:site/app/features/home/widgets/contact/contact.dart';
import 'package:site/app/features/home/widgets/experience/experience.dart';
import 'package:site/app/features/home/widgets/footer/footer.dart';
import 'package:site/app/features/home/widgets/presentation/presentation.dart';
import 'package:site/app/features/home/widgets/projects/projects.dart';
import 'package:site/app/features/home/widgets/social/social.dart';

class AppListWidgets {
  static const homePageWidgetList = <Widget>[
    Presentation(),
    Projects(),
    Experience(),
    Social(),
    Contact(),
    CustomFooter(),
  ];
}
