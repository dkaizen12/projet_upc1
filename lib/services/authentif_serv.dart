import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../model_data/user.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';



class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// 🔐 Connexion par email et mot de passe
  Future<UserModel?> signInWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final uid = credential.user!.uid;
      final doc = await _firestore.collection('users').doc(uid).get();
      return UserModel.fromMap(doc.data()!);
    } catch (e) {
      print('Erreur de connexion : $e');
      return null;
    }
  }

  /// 📝 Inscription par email avec création automatique dans Firestore
  Future<UserModel?> registerWithEmailPassword({
    required String nom,
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final uid = credential.user!.uid;
      final newUser = UserModel(
        nom: nom,
        email: email,
        password: password,
        likes: 0,
        abonnes: 0,
        abonnements: 0,
        photoUrl: null,
        posts: [],
      );
      await _firestore.collection('users').doc(uid).set(newUser.toMap());
      return newUser;
    } catch (e) {
      print('Erreur d\'inscription : $e');
      return null;
    }
  }

  /// 🔐 Connexion Google
  Future<UserModel?> signInWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? account = await googleSignIn.signIn();
      if (account == null) return null;

      final GoogleSignInAuthentication googleAuth =
          await account.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);
      final user = userCredential.user;
      if (user == null) return null;

      final docRef = _firestore.collection('users').doc(user.uid);
      final doc = await docRef.get();

      if (!doc.exists) {
        final newUser = UserModel(
          nom: user.displayName ?? 'Utilisateur',
          email: user.email ?? '',
          password: '',
          likes: 0,
          abonnes: 0,
          abonnements: 0,
          photoUrl: user.photoURL,
          posts: [],
        );
        await docRef.set(newUser.toMap());
        return newUser;
      } else {
        return UserModel.fromMap(doc.data()!);
      }
    } catch (e) {
      print('Erreur Google sign-in : $e');
      return null;
    }
  }

  /// 🔒 Déconnexion
  Future<void> signOut() async {
    await _auth.signOut();
    await GoogleSignIn().signOut();
  }

  /// 🔑 Mot de passe oublié
  Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }


  //obtenir l'id du user connecté
  User? getCurrentUser() {
    return FirebaseAuth.instance.currentUser;
  }

    //stockage locale des traces de l'utilisateur 

Future<UserModel?> loadUserFromLocal() async {
  final prefs = await SharedPreferences.getInstance();
  final userJson = prefs.getString('user_model');
  if (userJson == null) return null;

  final data = jsonDecode(userJson);
  return UserModel.fromMap(data);
}
Future<void> saveUserToLocal(UserModel user) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('user_email', user.email);
  await prefs.setString('user_nom', user.nom);
  await prefs.setInt('user_likes', user.likes);
  await prefs.setInt('user_abonnes', user.abonnes);
  await prefs.setInt('user_abonnements', user.abonnements);
  await prefs.setString('user_photoUrl', user.photoUrl ?? '');
}

}
