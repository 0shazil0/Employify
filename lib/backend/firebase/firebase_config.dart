import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBbpllYTFSr9usroKJZoYNmyAqs9DjWm7A",
            authDomain: "employify-7f63d.firebaseapp.com",
            projectId: "employify-7f63d",
            storageBucket: "employify-7f63d.appspot.com",
            messagingSenderId: "969574251969",
            appId: "1:969574251969:web:6baa5afe38ea1750030340",
            measurementId: "G-X4YWBJ91B3"));
  } else {
    await Firebase.initializeApp();
  }
}
