import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = new GoogleSignIn(scopes: ['email']);
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void googleSiginMothed() async {
    final GoogleSignInAccount googleuser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleuser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    await _firebaseAuth.signInWithCredential(credential);
  }
}
