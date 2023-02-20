import 'package:site/data/models/models.dart';
import 'package:site/data/repositories/contact/contact.dart';
import 'package:site/data/services/contact/contact.dart';

class ContactServiceImpl implements ContactService {
  const ContactServiceImpl({
    required ContactRepositoryImpl contactRepository,
  }) : _contactRepository = contactRepository;

  final ContactRepositoryImpl _contactRepository;

  @override
  Future sendMail({required Contact contact}) async {
    return await _contactRepository.sendMail(
      contact: contact,
    );
  }
}
