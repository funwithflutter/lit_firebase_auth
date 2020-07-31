import 'dart:async';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mobile_lit_firebase_auth.dart';

abstract class LitFirebaseAuthPlatform extends PlatformInterface {
  /// Constructs a UrlLauncherPlatform.
  LitFirebaseAuthPlatform() : super(token: _token);

  static final Object _token = Object();

  static LitFirebaseAuthPlatform _instance = LitFirebaseAuth();

  /// The default instance of [LitFirebaseAuthPlatform] to use.
  ///
  /// Defaults to [MobileLitFirebaseAuth].
  static LitFirebaseAuthPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [LitFirebaseAuthPlatform] when they register themselves.
  static set instance(LitFirebaseAuthPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> signInWithEmailAndPassword(String url) {
    throw UnimplementedError('launch() has not been implemented.');
  }
}
