import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class googleSignin with ChangeNotifier {
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;

  Stream<User?> get authState {
    //for state change
    return auth.authStateChanges();
  }

  Future signinwithGoogle() async {
    try {
      final GoogleSignIn signIn = GoogleSignIn(); //Instance of Google signin
      GoogleSignInAccount? googleSignInAccount =
          await signIn.signIn(); //account for signin
      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        try {
          UserCredential userCredential =
              await auth.signInWithCredential(credential);
          user = userCredential.user;
        } on PlatformException catch (e) {
          debugPrint(e.toString());
        }
      } else {
        return null;
      }
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
    notifyListeners();
  }

  Future<void> googleSignOut(context) async {
    try {
      return await auth.signOut();
    } catch (e) {
      debugPrint(e.toString());
    }
    notifyListeners();
  }
}
