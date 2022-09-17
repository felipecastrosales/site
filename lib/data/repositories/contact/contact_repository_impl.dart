import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:site/data/constants/constants_api.dart';
import 'package:site/data/keys/keys.dart';

import 'contact.dart';

class ContactRepositoryImpl implements ContactRepository {
  @override
  Future sendMail({
    required String name,
    required String email,
    required String message,
    required String subject,
  }) async {
    final baseUrl = Uri.parse(ConstantsAPI.baseUrl);
    // as this project is very simple and I wanted to make it available to the community, 
    // these private keys are simply in a 'keys' file and I added it to .gitignore.
    // ! you can and should work it out better, because it's about security. !
    const serviceId = Keys.serviceId;
    const templateId = Keys.templateId;
    const userId = Keys.userId;

    final response = await http.post(
      baseUrl,
      headers: ConstantsAPI.headers,
      body: json.encode(
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_subject': email,
            'user_message': message,
            'to_email': 'soufeliposales@gmail.com',
          }
        },
      ),
    );
    return response;
  }
}
