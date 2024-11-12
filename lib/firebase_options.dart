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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyADOOc0pGzhtHgUAWD0E-9mtRMZGuesK8s',
    appId: '1:879406527286:web:f78d35e5f56e4a18b87997',
    messagingSenderId: '879406527286',
    projectId: 'mad-act14-cw7',
    authDomain: 'mad-act14-cw7.firebaseapp.com',
    storageBucket: 'mad-act14-cw7.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNhh0jY6KHWYYI28u5JYh1TocKBdg8ock',
    appId: '1:879406527286:android:cb47e4b5450ac244b87997',
    messagingSenderId: '879406527286',
    projectId: 'mad-act14-cw7',
    storageBucket: 'mad-act14-cw7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmSEdRQxW184TJbggit7jM8j55fDpeSi0',
    appId: '1:879406527286:ios:72cb02c407cb5bb2b87997',
    messagingSenderId: '879406527286',
    projectId: 'mad-act14-cw7',
    storageBucket: 'mad-act14-cw7.firebasestorage.app',
    iosBundleId: 'com.example.madActivity14Cw7',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmSEdRQxW184TJbggit7jM8j55fDpeSi0',
    appId: '1:879406527286:ios:72cb02c407cb5bb2b87997',
    messagingSenderId: '879406527286',
    projectId: 'mad-act14-cw7',
    storageBucket: 'mad-act14-cw7.firebasestorage.app',
    iosBundleId: 'com.example.madActivity14Cw7',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyADOOc0pGzhtHgUAWD0E-9mtRMZGuesK8s',
    appId: '1:879406527286:web:fc2fd255ab1d3b35b87997',
    messagingSenderId: '879406527286',
    projectId: 'mad-act14-cw7',
    authDomain: 'mad-act14-cw7.firebaseapp.com',
    storageBucket: 'mad-act14-cw7.firebasestorage.app',
  );
}
