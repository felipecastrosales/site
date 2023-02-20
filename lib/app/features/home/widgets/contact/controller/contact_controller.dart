import 'package:flutter/material.dart';

import 'package:site/data/models/models.dart';
import 'package:site/data/services/contact/contact.dart';

class ContactController extends ChangeNotifier {
  ContactController({
    required ContactServiceImpl contactService,
  }) : _contactService = contactService;

  final ContactServiceImpl _contactService;

  void sendMail({
    required Contact contact,
  }) async {
    return _contactService.sendMail(
      contact: contact,
    );
  }
}
