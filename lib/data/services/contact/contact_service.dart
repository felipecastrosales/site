import 'package:site/data/models/models.dart';

abstract class ContactService {
  Future sendMail({required Contact contact});
}
