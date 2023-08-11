// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
// ignore: prefer-match-file-name
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDyClpcHXG5M7twFoC06y1A0fXUZI4GgLQ',
    appId: '1:884743546828:web:60fc5493354bb95aae9f69',
    messagingSenderId: '884743546828',
    projectId: 'site-96dd0',
    authDomain: 'site-96dd0.firebaseapp.com',
    storageBucket: 'site-96dd0.appspot.com',
    measurementId: 'G-QNS1WC1Y4B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAgfqTS-d712MTUDUC0fOXoKSHGuw6CNoM',
    appId: '1:884743546828:android:ea09ba7ee1ed93aeae9f69',
    messagingSenderId: '884743546828',
    projectId: 'site-96dd0',
    storageBucket: 'site-96dd0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDrl7u3LFGcDrk_o6XR571OHJjLYxHlqN4',
    appId: '1:884743546828:ios:f4ddf7bc0168bb74ae9f69',
    messagingSenderId: '884743546828',
    projectId: 'site-96dd0',
    storageBucket: 'site-96dd0.appspot.com',
    iosClientId:
        '884743546828-fjfun3totngd3bcog9jeopevkri03lob.apps.googleusercontent.com',
    iosBundleId: 'com.felipecastrosales.site',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDrl7u3LFGcDrk_o6XR571OHJjLYxHlqN4',
    appId: '1:884743546828:ios:f4ddf7bc0168bb74ae9f69',
    messagingSenderId: '884743546828',
    projectId: 'site-96dd0',
    storageBucket: 'site-96dd0.appspot.com',
    iosClientId:
        '884743546828-fjfun3totngd3bcog9jeopevkri03lob.apps.googleusercontent.com',
    iosBundleId: 'com.felipecastrosales.site',
  );
}
