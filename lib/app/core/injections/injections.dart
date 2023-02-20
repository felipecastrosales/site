import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'package:site/data/repositories/contact/contact.dart';
import 'package:site/data/services/firebase/firebase.dart';

final getIt = GetIt.I;

void configureDependencies() {
  getIt.registerSingleton<http.Client>(http.Client());
  getIt.registerSingleton<FirebaseRemoteConfig>(FirebaseRemoteConfig.instance);
  getIt.registerSingleton<FirebaseService>(FirebaseServiceImpl());
  getIt.registerFactory<ContactRepository>(
    () => ContactRepositoryImpl(
      firebaseRemoteConfig: getIt(),
      httpClient: getIt(),
    ),
  );
}
