import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: "AIzaSyCh7EIszFlHEq3qGoqk_I99yxEAKVFeBQ0",
    appId: "1:821992076661:web:a9900e5181b107764acf3c",
    messagingSenderId: "821992076661",
    projectId: "kindknock-861dd",
    storageBucket: "kindknock-861dd.firebasestorage.app",
    authDomain: "kindknock-861dd.firebaseapp.com",
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "AIzaSyCh7EIszFlHEq3qGoqk_I99yxEAKVFeBQ0",
    appId: "1:821992076661:android:abc123",
    messagingSenderId: "821992076661",
    projectId: "kindknock-861dd",
    storageBucket: "kindknock-861dd.firebasestorage.app",
  );

  static FirebaseOptions get currentPlatform {
    return web;
  }
}