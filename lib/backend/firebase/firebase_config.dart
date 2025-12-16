import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAz68SkKfmgRSvMs7B0aNkX6s_ocd1Qs2w",
            authDomain: "k-v6014-events-app-5e1gxd.firebaseapp.com",
            projectId: "k-v6014-events-app-5e1gxd",
            storageBucket: "k-v6014-events-app-5e1gxd.firebasestorage.app",
            messagingSenderId: "1088291498642",
            appId: "1:1088291498642:web:c840e0739b4ccf56c9d44b"));
  } else {
    await Firebase.initializeApp();
  }
}
