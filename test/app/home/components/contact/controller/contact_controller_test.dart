import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/contact/controller/contact_controller.dart';
import 'package:site/data/repositories/contact/contact.dart';
import 'package:site/data/services/contact/contact.dart';

void main() {
  test('ContactController', () async {
    var contactServiceImpl = ContactServiceImpl(
      contactRepository: ContactRepositoryImpl(),
    );

    var contactController = ContactController(
      contactService: contactServiceImpl,
    );

    expect(
      contactController,
      isInstanceOf<ChangeNotifier>(),
    );

    expect(
      contactController,
      isInstanceOf<ContactController>(),
    );

    expect(
      contactController.sendMail,
      isInstanceOf<Function>(),
    );

    var sendMail = contactController.sendMail(
      name: 'felipecastrosales',
      email: 'soufeliposales@gmail.com',
      message: 'Hello, World!',
      subject: 'Hello, World!',
    );

    expect(
      () => sendMail,
      isInstanceOf<void>(),
    );
  });
}
