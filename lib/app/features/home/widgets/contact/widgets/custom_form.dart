import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/features/home/widgets/contact/widgets/widgets.dart';
import 'package:site/app/utils/contact_validators.dart';
import 'package:site/app/widgets/buttons/buttons.dart';
import 'package:site/app/widgets/dividers/dividers.dart';

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
              hintText: AppTexts.get(context).name,
              prefixIcon: Icons.account_circle,
              validator: (value) => ContactValidators.name(value, context),
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: emailController,
              hintText: AppTexts.get(context).email,
              validator: (value) => ContactValidators.email(value, context),
              prefixIcon: Icons.mail,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: subjectController,
              hintText: AppTexts.get(context).title,
              prefixIcon: Icons.subject,
              validator: (value) => ContactValidators.subject(value, context),
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: messageController,
              hintText: AppTexts.get(context).text,
              prefixIcon: Icons.comment,
              validator: (value) => ContactValidators.message(value, context),
              maxLines: 2,
            ),
            const Center(
              child: ContactDivider(),
            ),
            Center(
              child: AppTextButton(
                text: AppTexts.get(context).sendEmailUpper,
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
