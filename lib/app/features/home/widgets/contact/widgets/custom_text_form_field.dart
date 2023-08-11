import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    required this.validator,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
  });

  final String hintText;
  final TextEditingController controller;
  final IconData prefixIcon;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    const customBorder = AppBorders.primaryBorder;

    return SizedBox(
      width: 300,
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.transparent,
        child: TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          onChanged: onChanged,
          textAlignVertical: TextAlignVertical.center,
          maxLines: maxLines,
          style: AppTextStyles.textForm,
          decoration: InputDecoration(
            fillColor: AppColors.white,
            filled: true,
            isDense: true,
            prefixIcon: Icon(prefixIcon, color: AppColors.primary),
            hintText: hintText,
            hintStyle: AppTextStyles.hint,
            errorStyle: AppTextStyles.errorForm,
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            border: customBorder(AppColors.primary),
            errorBorder: customBorder(AppColors.red),
            enabledBorder: customBorder(AppColors.background),
            disabledBorder: customBorder(AppColors.background),
            focusedBorder: customBorder(AppColors.primary),
            focusedErrorBorder: customBorder(AppColors.red),
          ),
        ),
      ),
    );
  }
}
