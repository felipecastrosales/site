import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/contact/controller/contact_controller.dart';
import 'package:site/data/repositories/contact/contact.dart';

import '../../../../../../utils/utils.dart';

void main() {
  setupFirebaseAuthMocks();

  // setUp(() async {});

  setUpAll(() async {
    await Firebase.initializeApp();
  });

  test('ContactController', () async {
    // var contactServiceImpl = ContactServiceImpl(
    //   contactRepository: ContactRepositoryImpl(),
    // );
    var contactRepository = ContactRepositoryImpl();

    var contactController = ContactController(
      // contactService: contactServiceImpl,
      contactRepository: contactRepository,
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
