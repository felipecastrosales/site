import 'package:flutter/material.dart';

import 'package:site/app/core/responsive/breakpoints.dart';
import 'package:site/app/home/components/contact/controller/contact_controller.dart';
import 'package:site/data/repositories/contact/contact_repository_impl.dart';
import 'package:site/data/services/contact/contact_service_impl.dart';

import 'components/components.dart';
import 'contact_mobile.dart';
import 'contact_web.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final contactController = ContactController(
      contactService: ContactServiceImpl(
        contactRepository: ContactRepositoryImpl(),
      ),
    );

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
          if (formKey.currentState!.validate()) {
            contactController.sendMail(
              name: nameController.text,
              email: emailController.text,
              message: messageController.text,
              subject: subjectController.text,
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
      builder: (context, constraints) {
        if (constraints.maxWidth < Breakpoints.contact) {
          return ContactMobile(contactForm());
        } else {
          return ContactWeb(contactForm());
        }
      },
    );
  }
}
