import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'lit_firebase_auth.dart';

abstract class LitFirebaseAuthPlatform extends PlatformInterface {
  LitFirebaseAuthPlatform() : super(token: _token);

  static final Object _token = Object();

  static LitFirebaseAuthPlatform _instance = LitFirebaseAuth();

  /// The default instance of [LitFirebaseAuthPlatform] to use.
  ///
  /// Defaults to [LitFirebaseAuth].
  static LitFirebaseAuthPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [LitFirebaseAuthPlatform] when they register themselves.
  static set instance(LitFirebaseAuthPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<Auth> registerWithEmailAndPassword({
    @required String email,
    @required String password,
  }) {
    throw UnimplementedError(
        'registerWithEmailAndPassword() has not been implemented.');
  }

  Future<Auth> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  }) {
    throw UnimplementedError(
        'signInWithEmailAndPassword() has not been implemented.');
  }

  Future<Auth> signInWithApple({
    AppleWebAuthenticationOptions authOptions,
  }) {
    throw UnimplementedError('signInWithApple() has not been implemented.');
  }

  Future<Auth> signInWithGoogle() {
    throw UnimplementedError('signInWithGoogle() has not been implemented.');
  }

  Future<Auth> signInWithGithub() {
    throw UnimplementedError('signInWithGithub() has not been implemented.');
  }

  Future<Auth> signInWithFacebook() {
    throw UnimplementedError('signInWithFacebook() has not been implemented.');
  }

  Future<Auth> signInWithTwitter() {
    throw UnimplementedError('signInWithTwitter() has not been implemented.');
  }

  Future<void> signOut() {
    throw UnimplementedError('signOut() has not been implemented.');
  }
}
