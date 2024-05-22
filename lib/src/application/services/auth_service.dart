//  //  ///
//  Import LIBRARIES
import 'package:firebase_auth/firebase_auth.dart';
//  Import FILES
import '../../domainmodels/app_user.dart';
//  //  ///

class AuthService {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//  Sing up a new user
  static Future<AppUser?> signUp(String email, String password) async {
    try {
      final UserCredential credential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      if (credential.user != null) {
        return AppUser(
          uid: credential.user!.uid,
          email: credential.user!.email!,
        );
      }

      return null;
    } catch (e) {
      return null;
    }
  } // End of signUp
}  // End of AuthService



//
