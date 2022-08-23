abstract class ContactService {
  Future sendMail({
    required String name,
    required String email,
    required String message,
    required String subject,
  });
}