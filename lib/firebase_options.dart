// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyClBod3R2T_xl-stUrrvRMO4XUXw2C-NeQ',
    appId: '1:679926229274:web:b49c8bfcf40d477219e4a3',
    messagingSenderId: '679926229274',
    projectId: 'flutter-auth-e6086',
    authDomain: 'flutter-auth-e6086.firebaseapp.com',
    storageBucket: 'flutter-auth-e6086.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9jYq-6ffOJmLBiBPvyBnPL0jCTo8wCyE',
    appId: '1:679926229274:android:031807c7c74e96ee19e4a3',
    messagingSenderId: '679926229274',
    projectId: 'flutter-auth-e6086',
    storageBucket: 'flutter-auth-e6086.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZ1PF19cZWywfMVMJgFTMfVonL2jaisEM',
    appId: '1:679926229274:ios:0452cbfdbae48d7c19e4a3',
    messagingSenderId: '679926229274',
    projectId: 'flutter-auth-e6086',
    storageBucket: 'flutter-auth-e6086.appspot.com',
    iosBundleId: 'com.auth.app',
  );
}
