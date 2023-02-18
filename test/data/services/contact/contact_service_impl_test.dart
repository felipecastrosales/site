import 'package:flutter_test/flutter_test.dart';
import 'package:site/data/repositories/contact/contact.dart';
import 'package:site/data/services/contact/contact.dart';

import '../../../fixtures/app_fixtures.dart';

void main() {
  test('ContactServiceImpl', () async {
    var contactRepository = ContactRepositoryImpl();
    var contactServiceImpl = ContactServiceImpl(
      contactRepository: contactRepository,
    );

    expect(
      contactServiceImpl,
      isNotNull,
    );

    await contactServiceImpl.sendMail(
      contact: AppFixtures().tContact,
    );
  });
}
