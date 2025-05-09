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
    apiKey: 'AIzaSyBhhJOnO1tIjd4zaXVCpMwJwUSSQRXw1qM',
    appId: '1:291985932735:web:c12957d82416dab38c610a',
    messagingSenderId: '291985932735',
    projectId: 'homzes-app-53a81',
    authDomain: 'homzes-app-53a81.firebaseapp.com',
    storageBucket: 'homzes-app-53a81.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkAXwuJ-VM29slZXAzlOvj79dMIDWppRw',
    appId: '1:291985932735:android:46b176a084944a0b8c610a',
    messagingSenderId: '291985932735',
    projectId: 'homzes-app-53a81',
    storageBucket: 'homzes-app-53a81.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3GggjaEY6IvCJm28KrTx91dVNkiEa85A',
    appId: '1:291985932735:ios:e79b0c57df1678898c610a',
    messagingSenderId: '291985932735',
    projectId: 'homzes-app-53a81',
    storageBucket: 'homzes-app-53a81.firebasestorage.app',
    iosBundleId: 'com.example.homzes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC3GggjaEY6IvCJm28KrTx91dVNkiEa85A',
    appId: '1:291985932735:ios:e79b0c57df1678898c610a',
    messagingSenderId: '291985932735',
    projectId: 'homzes-app-53a81',
    storageBucket: 'homzes-app-53a81.firebasestorage.app',
    iosBundleId: 'com.example.homzes',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBhhJOnO1tIjd4zaXVCpMwJwUSSQRXw1qM',
    appId: '1:291985932735:web:1590950e82f03f7c8c610a',
    messagingSenderId: '291985932735',
    projectId: 'homzes-app-53a81',
    authDomain: 'homzes-app-53a81.firebaseapp.com',
    storageBucket: 'homzes-app-53a81.firebasestorage.app',
  );

}