import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:site/app/core/l10n/l10n.dart';

class ContactValidators {
  static String? name(String? value, [BuildContext? context]) {
    if (value!.isEmpty) {
      return AppTexts.get(context!).insertValidName;
    }
    final regexLenght = RegExp(r'^.{3,}$');
    if (!regexLenght.hasMatch(value)) {
      return AppTexts.get(context!).insertABiggerName;
    }
    final regex = RegExp('[a-zA-Z]');
    if (regex.hasMatch(value)) {
      return null;
    }

    return AppTexts.get(context!).thisNameIsNotValid;
  }

  static String? email(String? value, [BuildContext? context]) {
    if (value == null || value.isEmpty) {
      return AppTexts.get(context!).insertValidEmail;
    }

    if (EmailValidator.validate(value)) {
      return null;
    }

    return AppTexts.get(context!).thisEmailIsNotValid;
  }

  static String? message(String? value, [BuildContext? context]) {
    if (value!.isEmpty) {
      return AppTexts.get(context!).insertValidMessage;
    }
    final regexLenght = RegExp(r'^.{10,}$');
    if (!regexLenght.hasMatch(value)) {
      return AppTexts.get(context!).insertABiggerMessage;
    }
    final regex = RegExp('[a-zA-Z]');
    if (regex.hasMatch(value)) {
      return null;
    }

    return AppTexts.get(context!).thisMessageIsNotValid;
  }

  static String? subject(String? value, [BuildContext? context]) {
    if (value!.isEmpty) {
      return AppTexts.get(context!).insertValidSubject;
    }
    final regexLenght = RegExp(r'^.{5,}$');
    if (!regexLenght.hasMatch(value)) {
      return AppTexts.get(context!).insertABiggerSubject;
    }
    final regex = RegExp('[a-zA-Z]');
    if (regex.hasMatch(value)) {
      return null;
    }

    return AppTexts.get(context!).thisSubjectIsNotValid;
  }
}
