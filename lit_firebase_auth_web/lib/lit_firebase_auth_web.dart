import 'dart:async';
import 'dart:html' as html;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:meta/meta.dart';
import 'package:lit_firebase_auth_platform_interface/lit_firebase_auth_platform_interface.dart';

/// The web implementation of [LitFirebaseAuth].
///
/// This class implements the `package:lit_firebase_auth` functionality for the web.
class LitFirebaseAuthWebPlugin extends LitFirebaseAuthPlatform {
  /// Registers this class as the default instance of [UrlLauncherPlatform].
  static void registerWith(Registrar registrar) {
    LitFirebaseAuthPlatform.instance = LitFirebaseAuthWebPlugin();
  }

  @override
  Future<bool> signInWithEmailAndPassword(String url) async {
    // TODO: implement signInWithEmailAndPassword
    print('Web: sign in with email and password');
    return true;
  }
}
