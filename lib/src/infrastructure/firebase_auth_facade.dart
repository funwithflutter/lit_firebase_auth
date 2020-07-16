import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

import '../domain/auth/auth.dart';
import '../domain/auth/auth_failure.dart';
import '../domain/auth/exceptions.dart';
import '../domain/auth/i_auth_facade.dart';
import '../domain/auth/user.dart';
import '../domain/auth/value_objects.dart';

class FirebaseAuthFacade implements AuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final bool googleSignInEnabled;

  FirebaseAuthFacade({
    FirebaseAuth firebaseAuth,
    GoogleSignIn googleSignIn,
    this.googleSignInEnabled = false,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();

  @override
  Future<User> getSignedInUser() => _firebaseAuth.currentUser().then(_mapUser);

  @override
  Stream<User> get onAuthStateChanged {
    return _firebaseAuth.onAuthStateChanged.map(_mapUser);
  }

  User _mapUser(FirebaseUser user) {
    if (user == null) {
      return const User.empty();
    }
    return User(user: user);
  }

  @override
  Future<Auth> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
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
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
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
    if (!googleSignInEnabled) {
      throw AuthProviderNotEnabled('Google');
    }

    // TODO investigate alternative solutions to handle these exceptions
    // Will possibly be solved once the Firebase Auth rework is complete
    // See: https://github.com/FirebaseExtended/flutterfire/issues/2582
    GoogleSignInAccount googleUser;
    try {
      googleUser = await _googleSignIn.signIn();
    } catch (e) {
      if (e.toString().contains('appClientId != null')) {
        print(e);
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
      print(e);
      return const Auth.failure(AuthFailure.serverError());
    }
  }

  @override
  Future<Auth> signInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return const Auth.success();
    } catch (_) {
      return const Auth.failure(AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    return Future.wait([
      _signOutGoogle(),
      _firebaseAuth.signOut(),
    ]);
  }

  Future<void> _signOutGoogle() async {
    if (!googleSignInEnabled) return;
    try {
      await _googleSignIn.signOut();
    } catch (e) {
      rethrow;
    }
  }
}
