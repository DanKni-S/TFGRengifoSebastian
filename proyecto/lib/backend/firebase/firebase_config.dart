import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBN0ZPoHoFqw2YViVlO48RJRz1tRcJO-cA",
            authDomain: "basedatos-1729c.firebaseapp.com",
            projectId: "basedatos-1729c",
            storageBucket: "basedatos-1729c.firebasestorage.app",
            messagingSenderId: "93541695843",
            appId: "1:93541695843:web:34bfd64d63590ff1a61356"));
  } else {
    await Firebase.initializeApp();
  }
}
