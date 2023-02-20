import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:http/http.dart' as http;

import 'package:site/data/constants/constants_api.dart';
import 'package:site/data/models/models.dart';
import 'package:site/data/repositories/contact/contact.dart';

class ContactRepositoryImpl implements ContactRepository {
  @override
  Future sendMail({required Contact contact}) async {
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    final serviceId = remoteConfig.getString('service_id');
    final templateId = remoteConfig.getString('template_id');
    final userId = remoteConfig.getString('user_id');
    final baseUrl = Uri.parse(ConstantsAPI.baseUrl);

    final response = await http.post(
      baseUrl,
      headers: ConstantsAPI.headers,
      body: json.encode(
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': contact.name,
            'user_email': contact.email,
            'user_subject': contact.email,
            'user_message': contact.message,
            'to_email': 'soufeliposales@gmail.com',
          }
        },
      ),
    );
    return response;
  }
}
