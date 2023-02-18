import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/features/home/widgets/contact/controller/contact_controller.dart';
import 'package:site/data/repositories/contact/contact.dart';
import 'package:site/data/services/contact/contact.dart';

import '../../../../../../fixtures/app_fixtures.dart';

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
      contact: AppFixtures().tContact,
    );

    expect(
      () => sendMail,
      isInstanceOf<void>(),
    );
  });
}
