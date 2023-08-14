import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:http/http.dart' as http;

import 'package:site/data/constants/constants_api.dart';
import 'package:site/data/models/models.dart';
import 'package:site/data/repositories/contact/contact.dart';

class ContactRepositoryImpl implements ContactRepository {
  ContactRepositoryImpl({
    required FirebaseRemoteConfig firebaseRemoteConfig,
    required http.Client httpClient,
  })  : _firebaseRemoteConfig = firebaseRemoteConfig,
        _httpClient = httpClient;

  final FirebaseRemoteConfig _firebaseRemoteConfig;
  final http.Client _httpClient;

  @override
  Future sendMail({
    required Contact contact,
  }) async {
    final serviceId = _firebaseRemoteConfig.getString('service_id');
    final templateId = _firebaseRemoteConfig.getString('template_id');
    final userId = _firebaseRemoteConfig.getString('user_id');
    final toEmail = _firebaseRemoteConfig.getString('to_email');
    final baseUrl = Uri.parse(ConstantsAPI.baseUrl);

    final response = await _httpClient.post(
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
            'to_email': toEmail,
          },
        },
      ),
    );

    return response;
  }
}
