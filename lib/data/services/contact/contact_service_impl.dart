import 'package:site/data/models/models.dart';
import 'package:site/data/repositories/contact/contact.dart';

import 'contact.dart';

class ContactServiceImpl implements ContactService {
  final ContactRepositoryImpl _contactRepository;

  const ContactServiceImpl({
    required ContactRepositoryImpl contactRepository,
  }) : _contactRepository = contactRepository;

  @override
  Future sendMail({required Contact contact}) async {
    return await _contactRepository.sendMail(
      contact: contact,
    );
  }
}
