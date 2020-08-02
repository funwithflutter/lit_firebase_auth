import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'auth.dart';
import 'auth_providers.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class AuthFacade {
  Future<User> getSignedInUser();

  Stream<User> get onAuthStateChanged;

  Future<Auth> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Auth> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Auth> signInWithGoogle();
  Future<Auth> signInWithApple({
    @required AppleWebAuthenticationOptions webAuthenticationOptions,
  });
  Future<Auth> signInWithGithub();
  Future<Auth> signInWithFacebook();
  Future<Auth> signInWithTwitter();
  Future<Auth> signInWithCredential(AuthCredential credential);
  Future<Auth> signInAnonymously();
  Future<void> signOut();
}
