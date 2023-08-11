import 'package:site/data/models/models.dart';

abstract class ContactRepository {
  Future sendMail({required Contact contact});
}
