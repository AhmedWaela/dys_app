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
    apiKey: 'AIzaSyC1cso1GHEWY4sYJGxm1xYlWX4USdOxxYA',
    appId: '1:876741330129:web:415d331197e8cc7d7d31f0',
    messagingSenderId: '876741330129',
    projectId: 'dys-app-445ba',
    authDomain: 'dys-app-445ba.firebaseapp.com',
    storageBucket: 'dys-app-445ba.appspot.com',
    measurementId: 'G-LZS66RJQG9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6xRFuQRTxMnSNUD5q2oQV4F1b3tvL7dI',
    appId: '1:876741330129:android:be9fcf3860f4d8477d31f0',
    messagingSenderId: '876741330129',
    projectId: 'dys-app-445ba',
    storageBucket: 'dys-app-445ba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVCCZm81xgKfMGLRHjoZ-LYd94WdrqFDs',
    appId: '1:876741330129:ios:b094bc35e63e15a07d31f0',
    messagingSenderId: '876741330129',
    projectId: 'dys-app-445ba',
    storageBucket: 'dys-app-445ba.appspot.com',
    androidClientId: '876741330129-fk9sf4eenr2jb546t8t5q10798k8mfnu.apps.googleusercontent.com',
    iosClientId: '876741330129-v3hf5oovdhhj3nsbs8153a5hpl60mlam.apps.googleusercontent.com',
    iosBundleId: 'com.example.dysApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAVCCZm81xgKfMGLRHjoZ-LYd94WdrqFDs',
    appId: '1:876741330129:ios:b094bc35e63e15a07d31f0',
    messagingSenderId: '876741330129',
    projectId: 'dys-app-445ba',
    storageBucket: 'dys-app-445ba.appspot.com',
    androidClientId: '876741330129-fk9sf4eenr2jb546t8t5q10798k8mfnu.apps.googleusercontent.com',
    iosClientId: '876741330129-v3hf5oovdhhj3nsbs8153a5hpl60mlam.apps.googleusercontent.com',
    iosBundleId: 'com.example.dysApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC1cso1GHEWY4sYJGxm1xYlWX4USdOxxYA',
    appId: '1:876741330129:web:be85ee1ea1e6173a7d31f0',
    messagingSenderId: '876741330129',
    projectId: 'dys-app-445ba',
    authDomain: 'dys-app-445ba.firebaseapp.com',
    storageBucket: 'dys-app-445ba.appspot.com',
    measurementId: 'G-3BYK8SLPH1',
  );
}