
import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/home/components/contact/controller/contact_controller.dart';
import 'package:site/app/utils/contact_validators.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/custom_text_button.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/data/repositories/contact/contact_repository_impl.dart';
import 'package:site/data/services/contact/contact_service_impl.dart';

import 'components/custom_text_form_field.dart';

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

    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Image.asset(
            AppImages.contactVerticalTexture,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            AppImages.contactBottomGradient,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Column(
          children: [
            MobileBody(
              children: [
                const SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: 'Contato',
                ),
                const SectionText(
                  paddingTop: 0,
                  paddingBottom: 45,
                  title: 'Vamos bater um papo, me chame:',
                ),
                Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomTextFormField(
                          controller: nameController,
                          hintText: 'Nome',
                          prefixIcon: Icons.account_circle,
                          validator: (value) => ContactValitadors.name(value),
                          onChanged: (value) {},
                        ),
                        const SizedBox(height: 16),
                        CustomTextFormField(
                          controller: emailController,
                          hintText: 'E-mail',
                          validator: (value) => ContactValitadors.email(value),
                          onChanged: (value) {},
                          prefixIcon: Icons.mail,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 16),
                        CustomTextFormField(
                          controller: subjectController,
                          hintText: 'Título',
                          prefixIcon: Icons.subject,
                          validator: (value) =>
                              ContactValitadors.subject(value),
                          onChanged: (value) {},
                        ),
                        const SizedBox(height: 16),
                        CustomTextFormField(
                          controller: messageController,
                          hintText: 'Texto',
                          prefixIcon: Icons.comment,
                          validator: (value) =>
                              ContactValitadors.message(value),
                          onChanged: (value) {},
                          maxLines: 2,
                        ),
                        const Center(
                          child: ContactDivider(),
                        ),
                        Center(
                          child: CustomTextButton(
                            text: 'ENVIAR E-MAIL',
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
                          ),
                        ),
                        const SizedBox(height: 60),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SectionDivider(),
          ],
        ),
      ],
    );
  }
}
