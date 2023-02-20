import 'package:flutter/material.dart';

import 'package:site/app/core/shared/app_texts.dart';
import 'package:site/app/features/home/widgets/contact/widgets/widgets.dart';
import 'package:site/app/utils/contact_validators.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/widgets.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.subjectController,
    required this.messageController,
    required this.onPressed,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController subjectController;
  final TextEditingController messageController;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextFormField(
              controller: nameController,
              hintText: AppTexts.name,
              prefixIcon: Icons.account_circle,
              validator: (value) => ContactValitadors.name(value),
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: emailController,
              hintText: AppTexts.email,
              validator: (value) => ContactValitadors.email(value),
              onChanged: (value) {},
              prefixIcon: Icons.mail,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: subjectController,
              hintText: AppTexts.title,
              prefixIcon: Icons.subject,
              validator: (value) => ContactValitadors.subject(value),
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: messageController,
              hintText: AppTexts.text,
              prefixIcon: Icons.comment,
              validator: (value) => ContactValitadors.message(value),
              onChanged: (value) {},
              maxLines: 2,
            ),
            const Center(
              child: ContactDivider(),
            ),
            Center(
              child: CustomTextButton(
                text: AppTexts.sendEmailUpper,
                onPressed: onPressed,
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
