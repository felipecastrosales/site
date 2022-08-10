import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/widgets/custom_borders.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    required this.validator,
    this.keyboardType = TextInputType.text,
    required this.onChanged,
    this.maxLines = 1,
  });

  final String hintText;
  final TextEditingController controller;
  final IconData prefixIcon;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    const customBorder = CustomBorders.primaryBorder;

    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        maxLines: maxLines,
        style: AppTexts.textForm,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon, color: AppColors.primary),
          hintText: hintText,
          hintStyle: AppTexts.hint,
          errorStyle: AppTexts.errorForm,
          contentPadding: EdgeInsets.zero,
          border: customBorder(AppColors.primary),
          errorBorder: customBorder(AppColors.red),
          enabledBorder: customBorder(AppColors.background),
          disabledBorder: customBorder(AppColors.background),
          focusedBorder: customBorder(AppColors.primary),
          focusedErrorBorder: customBorder(AppColors.red),
        ),
      ),
    );
  }
}
