import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:google_sign_in/google_sign_in.dart';

class AuthentifServ {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  //connexion
  Future<UserCredential> inscriptiongoogle() async {
    if (kIsWeb) {
    // 🔵 Web
    final googleProvider = GoogleAuthProvider();
    return await FirebaseAuth.instance.signInWithPopup(googleProvider);
  }
  else{
    //flux
    final GoogleSignInAccount? usergoogle = await _googleSignIn.signIn();

    //details de connexion
    final googleAuth = await usergoogle!.authentication;

    //new user
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    
    return await _auth.signInWithCredential(credential);
    }
  }

  //état utilisateur 
  Stream <User?> get user => _auth.authStateChanges();
}