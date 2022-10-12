import 'package:site/data/repositories/contact/contact.dart';

import 'contact.dart';

class ContactServiceImpl implements ContactService {
  final ContactRepositoryImpl _contactRepository;

  const ContactServiceImpl({
    required ContactRepositoryImpl contactRepository,
  }) : _contactRepository = contactRepository;

  @override
  Future sendMail({
    required String name,
    required String email,
    required String message,
    required String subject,
  }) async {
    return await _contactRepository.sendMail(
      name: name,
      email: email,
      message: message,
      subject: subject,
    );
  }
}
