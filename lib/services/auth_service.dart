import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final auth = FirebaseAuth.instance;

  // Google Sign In singleton 
  final googleSignIn = GoogleSignIn.instance;

  // Google Sign In
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await googleSignIn.authenticate();
      final String? idToken = googleUser.authentication.idToken;
      if (idToken == null) return null;
      final credential = GoogleAuthProvider.credential(idToken: idToken);
      return await auth.signInWithCredential(credential);
    } on GoogleSignInException catch (_) {
      return null; // e.g. user cancelled
    }
  }


}
