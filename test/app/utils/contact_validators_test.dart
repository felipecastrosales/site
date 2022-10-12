import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/utils/utils.dart';

void main() {
  test('ContactValidators methods', () async {
    var name = ContactValitadors.name('Felipe');
    expect(() => name, isNotNull);

    var email = ContactValitadors.email('soufeliposales@gmail.com');
    expect(() => email, isNotNull);

    var message = ContactValitadors.message('Hello, World!');
    expect(() => message, isNotNull);

    var subject = ContactValitadors.subject('Hello, World!');
    expect(() => subject, isNotNull);
  });
}
