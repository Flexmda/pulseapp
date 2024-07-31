import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyClK41JZfv0-UJt-jXmGKNSNtWJuetHumk",
            authDomain: "pulse-app-z2lw69.firebaseapp.com",
            projectId: "pulse-app-z2lw69",
            storageBucket: "pulse-app-z2lw69.appspot.com",
            messagingSenderId: "494392581895",
            appId: "1:494392581895:web:8ad59174d996c2d1f02fa2"));
  } else {
    await Firebase.initializeApp();
  }
}
