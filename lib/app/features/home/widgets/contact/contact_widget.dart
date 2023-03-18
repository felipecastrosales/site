import 'package:flutter/material.dart';

import 'package:site/app/core/injections/injections.dart';
import 'package:site/app/core/keys/app_keys.dart';
import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/responsive/responsive.dart';
import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/features/home/widgets/contact/contact_mobile.dart';
import 'package:site/app/features/home/widgets/contact/contact_web.dart';
import 'package:site/app/features/home/widgets/contact/controller/contact_controller.dart';
import 'package:site/app/features/home/widgets/contact/widgets/widgets.dart';
import 'package:site/app/widgets/widgets.dart';
import 'package:site/data/models/models.dart' as models;
import 'package:site/data/repositories/contact/contact.dart';

class ContactWidget extends StatelessWidget {
  ContactWidget({
    super.key,
    ContactController? contactController,
  }) : _contactController = contactController ??
            ContactController(
              contactRepository: ContactRepositoryImpl(
                firebaseRemoteConfig: getIt(),
                httpClient: getIt(),
              ),
            );

  final ContactController? _contactController;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final messageController = TextEditingController();
    final subjectController = TextEditingController();

    Widget contactForm() {
      return CustomForm(
        formKey: formKey,
        nameController: nameController,
        emailController: emailController,
        subjectController: subjectController,
        messageController: messageController,
        onPressed: () {
          if (formKey.currentState?.validate() ?? false) {
            appShowSnackBar(
              context,
              text: AppTexts.get(context).emailSendedWithSuccess,
              icon: Icons.check,
              color: AppColors.primaryDark,
              width: 300,
            );
            _contactController?.sendMail(
              contact: models.Contact(
                name: nameController.text,
                email: emailController.text,
                message: messageController.text,
                subject: subjectController.text,
              ),
            );
            nameController.clear();
            emailController.clear();
            messageController.clear();
            subjectController.clear();
          }
        },
      );
    }

    return LayoutBuilder(
      key: AppKeys.contact,
      builder: (context, constraints) {
        final form = contactForm();

        return constraints.maxWidth < Breakpoints.contact
            ? ContactMobile(form)
            : ContactWeb(form);
      },
    );
  }
}
