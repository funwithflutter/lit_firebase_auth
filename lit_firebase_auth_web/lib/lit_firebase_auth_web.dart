import 'package:firebase/firebase.dart' as web;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:meta/meta.dart';
import 'package:lit_firebase_auth_platform_interface/lit_firebase_auth_platform_interface.dart';

/// The web implementation of [LitFirebaseAuth].
///
/// This class implements the `package:lit_firebase_auth` functionality for the web.
class LitFirebaseAuthWebPlugin extends LitFirebaseAuthPlatform {
  final FirebaseApp _app;
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  // final bool googleSignInEnabled;

  LitFirebaseAuthWebPlugin({
    FirebaseApp app,
    FirebaseAuth firebaseAuth,
    GoogleSignIn googleSignIn,
    // this.googleSignInEnabled = false,
  })  : _app = app ?? FirebaseApp.instance,
        _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();

  /// Registers this class as the default instance of [LitFirebaseAuthPlatform].
  static void registerWith(Registrar registrar) {
    LitFirebaseAuthPlatform.instance = LitFirebaseAuthWebPlugin();
  }

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
    } catch (e) {
      debugPrint(e.code);
      switch (e.code) {
        case "auth/email-already-in-use":
          return const Auth.failure(AuthFailure.emailAlreadyInUse());
          break;
        default:
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
    } catch (e) {
      switch (e.code) {
        case "auth/wrong-password":
        case "auth/user-not-found":
          return const Auth.failure(
            AuthFailure.invalidEmailAndPasswordCombination(),
          );
          break;
        case "auth/invalid-email":
          return const Auth.failure(AuthFailure.malformed());
          break;
        case "auth/user-disabled":
          return const Auth.failure(AuthFailure.userDisabled());
          break;
        default:
          return const Auth.failure(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Auth> signInWithGoogle() async {
    GoogleSignInAccount googleUser;
    try {
      googleUser = await _googleSignIn.signIn();
    } catch (e) {
      if (e.toString().contains('appClientId != null')) {
        debugPrint(e);
        return const Auth.failure(AuthFailure.serverError());
      }
      return const Auth.failure(AuthFailure.cancelledByUser());
    }
    try {
      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return const Auth.success();
    } catch (e) {
      debugPrint(e);
      return const Auth.failure(AuthFailure.serverError());
    }
  }

  @override
  Future<Auth> signInWithApple({AppleWebAuthenticationOptions authOptions}) {
    const provider = 'apple.com';
    const scopes = ['email'];
    final customOAuthParameters = {'locale': 'en'};

    return _openSignInFlow(provider, scopes, customOAuthParameters);
  }

  @override
  Future<Auth> signInWithGithub() async {
    const provider = 'github.com';
    const scopes = ['user:email'];

    final customOAuthParameters = {'locale': 'en'};
    return _openSignInFlow(provider, scopes, customOAuthParameters);
  }

  @override
  Future<Auth> signInWithFacebook() {
    const provider = 'facebook.com';
    const scopes = ['email'];

    final customOAuthParameters = {'locale': 'en'};
    return _openSignInFlow(provider, scopes, customOAuthParameters);
  }

  @override
  Future<Auth> signInWithTwitter() {
    const provider = 'twitter.com';
    const scopes = ['email'];

    final customOAuthParameters = {'locale': 'en'};
    return _openSignInFlow(provider, scopes, customOAuthParameters);
  }

  @override
  Future<void> signOut() {
    // TODO sign out providers
    return _firebaseAuth.signOut();
  }

  Future<Auth> _openSignInFlow(String provider, List<String> scopes,
      [Map<String, String> customOAuthParameters]) async {
    try {
      final oAuthProvider = web.OAuthProvider(provider);
      scopes.forEach((scope) => oAuthProvider.addScope(scope));
      if (customOAuthParameters != null) {
        oAuthProvider.setCustomParameters(customOAuthParameters);
      }
      await web.app(_app.name).auth().signInWithPopup(oAuthProvider);
      FirebaseAuth.fromApp(_app);
      return const Auth.success();
    } catch (e) {
      if (e.code == "auth/popup-closed-by-user") {
        return const Auth.failure(AuthFailure.cancelledByUser());
      } else {
        debugPrint(e);
        return const Auth.failure(AuthFailure.serverError());
      }
    }
  }
}
