import 'package:flutter_test/flutter_test.dart';
import 'package:site/data/repositories/contact/contact.dart';

void main() {
  test('ContactRepositoryImpl', () async {
    var contactRepositoryImpl = ContactRepositoryImpl();

    expect(
      contactRepositoryImpl,
      isNotNull,
    );

    await contactRepositoryImpl.sendMail(
      name: 'felipecastrosales',
      email: 'soufeliposales@gmail.com',
      message: 'Hello, World!',
      subject: 'Hello, World!',
    );
  });
}
