import 'package:flutter/material.dart';

import 'package:site/data/services/contact/contact_service_impl.dart';

class ContactController extends ChangeNotifier {
  final ContactServiceImpl _contactService;

  ContactController({
    required ContactServiceImpl contactService,
  }) : _contactService = contactService;

  void sendMail({
    required String name,
    required String email,
    required String message,
    required String subject,
  }) async {
    return _contactService.sendMail(
      name: name,
      email: email,
      message: message,
      subject: subject,
    );
  }
}
