import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/custom_text_button.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/data/keys/keys.dart';

import 'components/custom_text_form_field.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final messageController = TextEditingController();
    final subjectController = TextEditingController();

    return Column(
      children: [
        MobileBody(
          children: [
            const SectionTitle(
              paddingTop: 50,
              paddingBottom: 20,
              title: 'Experience',
            ),
            const SectionText(
              paddingTop: 0,
              paddingBottom: 20,
              title: 'Vamos bater um papo, me chame:',
            ),
            const SizedBox(height: 20),
            Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFormField(
                      width: 250,
                      controller: nameController,
                      hintText: 'Nome',
                      validator: validator,
                    ),
                    const SizedBox(height: 16),
                    CustomTextFormField(
                      width: 250,
                      controller: emailController,
                      hintText: 'E-mail',
                      validator: validator,
                    ),
                    const SizedBox(height: 16),
                    CustomTextFormField(
                      width: 300,
                      controller: subjectController,
                      hintText: 'Título',
                      validator: validator,
                    ),
                    const SizedBox(height: 16),
                    CustomTextFormField(
                      width: 300,
                      controller: messageController,
                      hintText: 'Texto',
                      validator: validator,
                    ),
                    const Center(
                      child: ContactDivider(),
                    ),
                    Center(
                      child: CustomTextButton(
                        text: 'ENVIAR E-MAIL',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            sendEmail(
                              name: nameController.text,
                              email: emailController.text,
                              message: messageController.text,
                              subject: subjectController.text,
                            );
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
    );
  }

  Future sendEmail({
    required String name,
    required String email,
    required String message,
    required String subject,
  }) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    // as this project is very simple and I wanted to make it available to the community, these private keys are simply in a 'keys' file and I added it to .gitignore.
    // ! you can and should work it out better, because it's about security. !
    const serviceId = Keys.serviceId;
    const templateId = Keys.templateId;
    const userId = Keys.userId;
    final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode(
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_subject': email,
            'user_message': message,
            'to_email': 'soufeliposales@gmail.com',
          }
        },
      ),
    );
    return response;
  }

  static String? validator(String? value) {
    if (value!.isEmpty) {
      return 'Invalid.';
    }
    return null;
  }
}
