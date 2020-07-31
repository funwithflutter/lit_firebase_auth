import 'lit_firebase_auth_platform_interface.dart';

class LitFirebaseAuth extends LitFirebaseAuthPlatform {
  @override
  Future<bool> signInWithEmailAndPassword(String url) async {
    // TODO: implement signInWithEmailAndPassword
    print('Base: sign in with email and password');

    return true;
  }
}
