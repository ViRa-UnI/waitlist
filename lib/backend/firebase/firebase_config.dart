import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAkr1-Mo4VUhQ0agF9n2dqiW8Q7Zlis2fU",
            authDomain: "titlewaitinglist2.firebaseapp.com",
            projectId: "titlewaitinglist2",
            storageBucket: "titlewaitinglist2.appspot.com",
            messagingSenderId: "787070953668",
            appId: "1:787070953668:web:30cfe9000fc4ea86740191",
            measurementId: "G-D1D1TB17VX"));
  } else {
    await Firebase.initializeApp();
  }
}
