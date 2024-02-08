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
    apiKey: 'AIzaSyBZhc9bQ-DShf7nJ0k-BnJXXImzhVxWSsY',
    appId: '1:608142168414:web:d524223c248a93d5647fcf',
    messagingSenderId: '608142168414',
    projectId: 'moviedb-2c1bd',
    authDomain: 'moviedb-2c1bd.firebaseapp.com',
    storageBucket: 'moviedb-2c1bd.appspot.com',
    measurementId: 'G-47KBNLC0KE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5gQMO7ImuMBgMQneBIFVScOdlG__7IAA',
    appId: '1:608142168414:android:8ceef4a79bf93c6e647fcf',
    messagingSenderId: '608142168414',
    projectId: 'moviedb-2c1bd',
    storageBucket: 'moviedb-2c1bd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBy6g1snywAlQ6hcnddcvJ0ueIaUPlP0ZU',
    appId: '1:608142168414:ios:ef80c4b35311d021647fcf',
    messagingSenderId: '608142168414',
    projectId: 'moviedb-2c1bd',
    storageBucket: 'moviedb-2c1bd.appspot.com',
    iosBundleId: 'com.example.movieml',
  );
}