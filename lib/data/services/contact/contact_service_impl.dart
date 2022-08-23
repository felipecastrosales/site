import 'package:site/data/repositories/contact/contact_repository.dart';

import 'contact_service.dart';

class ContactServiceImpl implements ContactService {
  final ContactRepository _contactRepository;
  const ContactServiceImpl({
    required ContactRepository contactRepository,
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
