import 'package:firebase_remote_config/firebase_remote_config.dart';

abstract class FirebaseService {
  Future<void> setUpInitialization();
  Future<void> setUpRemoteConfig();
  Future<FirebaseRemoteConfig> get instance;
}
