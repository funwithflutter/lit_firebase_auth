import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:meta/meta.dart';
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'lit_firebase_auth_platform_interface.dart';

class LitFirebaseAuth extends LitFirebaseAuthPlatform {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  LitFirebaseAuth({
    FirebaseAuth firebaseAuth,
    GoogleSignIn googleSignIn,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();

  @override
  Future<Auth> registerWithEmailAndPassword({
    @required String email,
    @required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Auth.success();
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return const Auth.failure(AuthFailure.emailAlreadyInUse());
      } else {
        return const Auth.failure(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Auth> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Auth.success();
    } on PlatformException catch (e) {
      switch (e.code) {
        case "ERROR_WRONG_PASSWORD":
        case "ERROR_USER_NOT_FOUND":
          return const Auth.failure(
            AuthFailure.invalidEmailAndPasswordCombination(),
          );
          break;
        case "ERROR_INVALID_EMAIL":
          return const Auth.failure(AuthFailure.malformed());
          break;
        case "ERROR_USER_DISABLED":
          return const Auth.failure(AuthFailure.userDisabled());
          break;
        default:
          return const Auth.failure(AuthFailure.serverError());
      }
    }
  }

  // @override
  // Future<Auth> signInWithApple(
  //     {AppleWebAuthenticationOptions authOptions}) async {
  //   try {
  //     final appleUser = await SignInWithApple.getAppleIDCredential(
  //       scopes: [
  //         AppleIDAuthorizationScopes.email,
  //         AppleIDAuthorizationScopes.fullName,
  //       ],
  //       webAuthenticationOptions: WebAuthenticationOptions(
  //         clientId: authOptions.clientId,
  //         redirectUri: authOptions.redirectUri,
  //       ),
  //     );
  //     const oAuthProvider = OAuthProvider(providerId: 'apple.com');
  //     final authCredential = oAuthProvider.getCredential(
  //       idToken: appleUser.identityToken,
  //       accessToken: appleUser.authorizationCode,
  //     );
  //     await _firebaseAuth.signInWithCredential(authCredential);
  //     return const Auth.success();
  //   } on SignInWithAppleAuthorizationException catch (e) {
  //     if (e.code == AuthorizationErrorCode.canceled) {
  //       return const Auth.failure(AuthFailure.cancelledByUser());
  //     }
  //     return const Auth.failure(AuthFailure.serverError());
  //   } catch (e) {
  //     return const Auth.failure(AuthFailure.serverError());
  //   }
  // }

  @override
  Future<Auth> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return const Auth.failure(AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return const Auth.success();
    } on PlatformException catch (_) {
      return const Auth.failure(AuthFailure.serverError());
    }
  }

  @override
  Future<Auth> signInWithGithub() {
    // TODO: implement signInWithGithub
    return super.signInWithGithub();
  }

  @override
  Future<Auth> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    return super.signInWithFacebook();
  }

  @override
  Future<Auth> signInWithTwitter() {
    // TODO: implement signInWithTwitter
    return super.signInWithTwitter();
  }

  @override
  Future<void> signOut() {
    // TODO: add other signouts
    return _firebaseAuth.signOut();
  }
}
