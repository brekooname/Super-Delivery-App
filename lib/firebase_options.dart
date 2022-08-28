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
    apiKey: 'AIzaSyD7SN848RSBKejAjHq8Af0V5k-El0OWi0M',
    appId: '1:947362964850:web:ed72d35b68f7f4bbd329eb',
    messagingSenderId: '947362964850',
    projectId: 'super-delivery-868b1',
    authDomain: 'super-delivery-868b1.firebaseapp.com',
    storageBucket: 'super-delivery-868b1.appspot.com',
    measurementId: 'G-WD6VQGPBHX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvNrnq_xDx90T4TYj-r4Pm7HyD02kI_zw',
    appId: '1:947362964850:android:81eef78c2997e24fd329eb',
    messagingSenderId: '947362964850',
    projectId: 'super-delivery-868b1',
    storageBucket: 'super-delivery-868b1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMhD-GVwGcmJBJbwC8BpLv7A_6Z3Xn1Bk',
    appId: '1:947362964850:ios:917a5ccaf39f9d16d329eb',
    messagingSenderId: '947362964850',
    projectId: 'super-delivery-868b1',
    storageBucket: 'super-delivery-868b1.appspot.com',
    iosClientId:
        '947362964850-bcp8h8ip974epnf3e5mmesmqqi5f35di.apps.googleusercontent.com',
    iosBundleId: 'com.example.delivery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMhD-GVwGcmJBJbwC8BpLv7A_6Z3Xn1Bk',
    appId: '1:947362964850:ios:917a5ccaf39f9d16d329eb',
    messagingSenderId: '947362964850',
    projectId: 'super-delivery-868b1',
    storageBucket: 'super-delivery-868b1.appspot.com',
    iosClientId:
        '947362964850-bcp8h8ip974epnf3e5mmesmqqi5f35di.apps.googleusercontent.com',
    iosBundleId: 'com.example.delivery',
  );
}
