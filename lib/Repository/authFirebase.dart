import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthFirebase {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<UserCredential> singIn() async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gsA = await googleSignInAccount!.authentication;

    UserCredential user = await _auth.signInWithCredential(
        GoogleAuthProvider.credential(
            idToken: gsA.idToken, accessToken: gsA.accessToken));
    return user;
  }
}
