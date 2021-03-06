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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCs_R6I730SvDI4eBk2hPOCq81SzPQEpoA',
    appId: '1:606254244778:web:3deffadc4d0a1a1d5b81d3',
    messagingSenderId: '606254244778',
    projectId: 'fitstack-337104',
    authDomain: 'fitstack-337104.firebaseapp.com',
    storageBucket: 'fitstack-337104.appspot.com',
    measurementId: 'G-9955668QK7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD00CGxTDoVgQEKBKLh2xIfudyaIHifS5Y',
    appId: '1:606254244778:android:da05a52e47b791e05b81d3',
    messagingSenderId: '606254244778',
    projectId: 'fitstack-337104',
    storageBucket: 'fitstack-337104.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNw9-sJ0DIJLbAF2-ufFz9GKrlwR7DQcI',
    appId: '1:606254244778:ios:c322fed5743611275b81d3',
    messagingSenderId: '606254244778',
    projectId: 'fitstack-337104',
    storageBucket: 'fitstack-337104.appspot.com',
    iosClientId: '606254244778-s31ijufed41dh9kqvdpsl0m5r8k15m55.apps.googleusercontent.com',
    iosBundleId: 'com.example.fitstackapp',
  );
}
