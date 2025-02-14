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
    apiKey: 'AIzaSyBJqMDpb_Fqv1EMXJXWKOnZE77lydCV3kU',
    appId: '1:769788437664:web:e9d4dfa97488fcda5f55c5',
    messagingSenderId: '769788437664',
    projectId: 'crud-dd407',
    authDomain: 'crud-dd407.firebaseapp.com',
    storageBucket: 'crud-dd407.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-9eocjDuJ8MOkbpXi0XeyA_3tLIF3DPw',
    appId: '1:769788437664:android:3af356ba5d967b885f55c5',
    messagingSenderId: '769788437664',
    projectId: 'crud-dd407',
    storageBucket: 'crud-dd407.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCY1ZQcFzJ_bzAcKrs9PxHbzGb9foE2dLk',
    appId: '1:769788437664:ios:beeb40984d6b2f275f55c5',
    messagingSenderId: '769788437664',
    projectId: 'crud-dd407',
    storageBucket: 'crud-dd407.appspot.com',
    iosBundleId: 'com.example.crud',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCY1ZQcFzJ_bzAcKrs9PxHbzGb9foE2dLk',
    appId: '1:769788437664:ios:beeb40984d6b2f275f55c5',
    messagingSenderId: '769788437664',
    projectId: 'crud-dd407',
    storageBucket: 'crud-dd407.appspot.com',
    iosBundleId: 'com.example.crud',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBJqMDpb_Fqv1EMXJXWKOnZE77lydCV3kU',
    appId: '1:769788437664:web:0fcd6051dd19c6b75f55c5',
    messagingSenderId: '769788437664',
    projectId: 'crud-dd407',
    authDomain: 'crud-dd407.firebaseapp.com',
    storageBucket: 'crud-dd407.appspot.com',
  );
}
