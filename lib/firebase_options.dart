// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'firebase_options.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
);
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCH8SerVkOurJjgIzRa41ziaI5mU79OGzk',
    appId: '1:46539098093:android:3f1de86f88f2466ac889e4',
    messagingSenderId: '46539098093',
    projectId: 'test-project-flutter-98064',
    storageBucket: 'test-project-flutter-98064.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC250i0r_kqfpBSK-dpGE-zQVrzTgvnDJQ',
    appId: '1:46539098093:ios:62ac21cc80f21d0fc889e4',
    messagingSenderId: '46539098093',
    projectId: 'test-project-flutter-98064',
    storageBucket: 'test-project-flutter-98064.appspot.com',
    iosClientId: '46539098093-ackrqc6fbrtrun85agctfb3qdo1ra92j.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebaseAuthproj',
  );
}
