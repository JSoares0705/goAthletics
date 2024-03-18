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
    apiKey: 'AIzaSyBH-R1Sf2uRMfTplMIPLfjrwWdSKWwqiPs',
    appId: '1:666732809950:web:cf9727d797ca9bc6eb7c4f',
    messagingSenderId: '666732809950',
    projectId: 'goathletics-dc9ee',
    authDomain: 'goathletics-dc9ee.firebaseapp.com',
    storageBucket: 'goathletics-dc9ee.appspot.com',
    measurementId: 'G-TJ640V9BVJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDsm5ne40ACv-dfg4wFmNIiFwT-W3_Zrec',
    appId: '1:666732809950:android:6f19a3c678c84e48eb7c4f',
    messagingSenderId: '666732809950',
    projectId: 'goathletics-dc9ee',
    storageBucket: 'goathletics-dc9ee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAgvvQ1x4r_Em8rycLgDK7vvAjohfuSNjU',
    appId: '1:666732809950:ios:a015400aba35a6f7eb7c4f',
    messagingSenderId: '666732809950',
    projectId: 'goathletics-dc9ee',
    storageBucket: 'goathletics-dc9ee.appspot.com',
    iosBundleId: 'com.goathletics.goAthletics',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAgvvQ1x4r_Em8rycLgDK7vvAjohfuSNjU',
    appId: '1:666732809950:ios:85b7c4fa1b1ce4fceb7c4f',
    messagingSenderId: '666732809950',
    projectId: 'goathletics-dc9ee',
    storageBucket: 'goathletics-dc9ee.appspot.com',
    iosBundleId: 'com.goathletics.goAthletics.RunnerTests',
  );
}
