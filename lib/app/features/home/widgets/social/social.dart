import 'package:flutter/material.dart';
import 'package:site/app/core/shared/app_keys.dart';

import 'package:site/app/core/responsive/responsive.dart';
import 'package:site/app/features/home/widgets/social/social_mobile.dart';
import 'package:site/app/features/home/widgets/social/social_web.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: AppKeys.social,
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.social
            ? const SocialMobile()
            : const SocialWeb();
      },
    );
  }
}
