import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:site/app/core/l10n/l10n.dart';

class ContactValidators {
  static const maxSizeForName = 50;
  static const maxSizeForMessage = 300;
  static const maxSizeForSubject = 60;

  static String? name(String? value, [BuildContext? context]) {
    if (value == null || value.isEmpty) {
      return AppTexts.get(context!).insertValidName;
    }

    final regexLenght = RegExp(r'^.{3,}$');
    if (!regexLenght.hasMatch(value)) {
      return AppTexts.get(context!).insertABiggerName;
    }

    if (value.length > maxSizeForName) {
      return AppTexts.get(context!).insertALittleName;
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
    if (value == null || value.isEmpty) {
      return AppTexts.get(context!).insertValidMessage;
    }

    final regexLenght = RegExp(r'^.{10,}$');
    if (!regexLenght.hasMatch(value)) {
      return AppTexts.get(context!).insertABiggerMessage;
    }

    if (value.length > maxSizeForMessage) {
      return AppTexts.get(context!).insertALittleMessage;
    }

    final regex = RegExp('[a-zA-Z]');
    if (regex.hasMatch(value)) {
      return null;
    }

    return AppTexts.get(context!).thisMessageIsNotValid;
  }

  static String? subject(String? value, [BuildContext? context]) {
    if (value == null || value.isEmpty) {
      return AppTexts.get(context!).insertValidSubject;
    }

    final regexLenght = RegExp(r'^.{5,}$');
    if (!regexLenght.hasMatch(value)) {
      return AppTexts.get(context!).insertABiggerSubject;
    }

    if (value.length > maxSizeForSubject) {
      return AppTexts.get(context!).insertALittleSubject;
    }

    final regex = RegExp('[a-zA-Z]');
    if (regex.hasMatch(value)) {
      return null;
    }

    return AppTexts.get(context!).thisSubjectIsNotValid;
  }
}
