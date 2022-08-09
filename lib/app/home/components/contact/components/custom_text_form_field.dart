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
    required this.width,
  });

  final String hintText;
  final TextEditingController controller;
  final IconData prefixIcon;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final int maxLines;
  final double width;

  @override
  Widget build(BuildContext context) {
    const customBorder = CustomBorders.primaryBorder;

    return SizedBox(
      width: width,
      child: TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        maxLines: maxLines,
        style: AppTexts.textForm,
        decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
          isDense: true,
          prefixIcon: Icon(prefixIcon, color: AppColors.primary),
          hintText: hintText,
          hintStyle: AppTexts.hint,
          errorStyle: AppTexts.errorForm,
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
