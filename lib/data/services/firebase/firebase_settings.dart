import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseSettings {
  final setSettings = RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(hours: 1),
  );
}
