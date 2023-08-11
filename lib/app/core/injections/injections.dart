import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'package:site/data/repositories/contact/contact.dart';
import 'package:site/data/services/firebase/firebase.dart';

final getIt = GetIt.I;

void configureDependencies() {
  if (!getIt.isRegistered<http.Client>()) {
    getIt.registerSingleton<http.Client>(
      http.Client(),
    );
  }
  if (!getIt.isRegistered<FirebaseRemoteConfig>()) {
    getIt.registerSingleton<FirebaseRemoteConfig>(
      FirebaseRemoteConfig.instance,
    );
  }
  if (!getIt.isRegistered<FirebaseService>()) {
    getIt.registerSingleton<FirebaseService>(
      FirebaseServiceImpl(),
    );
  }
  if (!getIt.isRegistered<ContactRepository>()) {
    getIt.registerSingleton<ContactRepository>(
      ContactRepositoryImpl(
        firebaseRemoteConfig: getIt(),
        httpClient: getIt(),
      ),
    );
  }
}
