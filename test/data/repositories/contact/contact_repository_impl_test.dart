import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import 'package:site/data/repositories/contact/contact.dart';

import '../../../utils/utils.dart';

void main() {
  late MockFirebaseRemoteConfig mockFirebaseRemoteConfig;
  late MockHttpClient mockHttpClient;
  late ContactRepositoryImpl contactRepository;

  setUp(() async {
    mockFirebaseRemoteConfig = MockFirebaseRemoteConfig();
    mockHttpClient = MockHttpClient();

    contactRepository = ContactRepositoryImpl(
      firebaseRemoteConfig: mockFirebaseRemoteConfig,
      httpClient: mockHttpClient,
    );

    when(
      () => mockFirebaseRemoteConfig.getString('service_id'),
    ).thenReturn('service_id');

    when(
      () => mockFirebaseRemoteConfig.getString('template_id'),
    ).thenReturn('template_id');

    when(
      () => mockFirebaseRemoteConfig.getString('user_id'),
    ).thenReturn('user_id');

    when(
      () => mockHttpClient.post(
        any(),
        headers: any(named: 'headers'),
        body: any(named: 'body'),
      ),
    ).thenAnswer(
      (_) async => http.Response(
        '',
        200,
      ),
    );
  });

  setUpAll(() async {
    registerFallbackValue(UriFake());
  });

  test('ContactRepositoryImpl', () async {
    expect(
      contactRepository,
      isNotNull,
    );

    await contactRepository.sendMail(
      contact: AppFixtures().tContact,
    );
  });
}
