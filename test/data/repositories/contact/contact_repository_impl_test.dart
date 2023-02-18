import 'package:flutter_test/flutter_test.dart';
import 'package:site/data/repositories/contact/contact.dart';

import '../../../fixtures/app_fixtures.dart';

void main() {
  test('ContactRepositoryImpl', () async {
    var contactRepositoryImpl = ContactRepositoryImpl();

    expect(
      contactRepositoryImpl,
      isNotNull,
    );

    await contactRepositoryImpl.sendMail(
      contact: AppFixtures().tContact,
    );
  });
}
