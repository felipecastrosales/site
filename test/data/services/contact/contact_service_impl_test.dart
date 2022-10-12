import 'package:flutter_test/flutter_test.dart';
import 'package:site/data/repositories/contact/contact.dart';
import 'package:site/data/services/contact/contact.dart';

void main() {
  testWidgets('ContactServiceImpl', (tester) async {
    var contactRepository = ContactRepositoryImpl();
    var contactServiceImpl = ContactServiceImpl(
      contactRepository: contactRepository,
    );

    expect(
      contactServiceImpl,
      isNotNull,
    );

    await contactServiceImpl.sendMail(
      name: 'felipecastrosales',
      email: 'soufeliposales@gmail.com',
      message: 'Hello, World!',
      subject: 'Hello, World!',
    );
  });
}
