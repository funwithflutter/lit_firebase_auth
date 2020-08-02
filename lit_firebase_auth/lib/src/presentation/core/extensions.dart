import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:lit_firebase_auth/src/presentation/widgets/auth_web_view.dart';
import 'package:provider/provider.dart';

import '../../application/auth/sign_in_handler/sign_in_handler_state.dart';
import '../../application/auth/sign_in_handler/sign_in_handler_state_notifier.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import 'auth_provider_result.dart';

extension AuthContext on BuildContext {
  /// Signs out the current user. Also signs out Google Sign-In.
  Future<void> signOut() async {
    Provider.of<AuthFacade>(this, listen: false).signOut();
  }

  /// Registers the user with email specified by [EmailTextFormField]
  /// and password specified by [PasswordTextFormField].
  ///
  /// Should only ever be used if you're creating your own custom sign-in
  /// form
  Future<void> registerWithEmailAndPassword() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .registerWithEmailAndPassword();
  }

  /// Sign-in the user with email specified by [EmailTextFormField]
  /// and password specified by [PasswordTextFormField].
  ///
  /// Should only ever be used if you're creating your own custom sign-in
  /// form
  Future<void> signInWithEmailAndPassword() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .signInWithEmailAndPassword();
  }

  /// Perform sign-in with Apple.
  ///
  /// Should only be used if you're creating your own custom sign-in form
  Future<void> signInWithApple() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .signInWithApple();
  }

  /// Perform sign-in with Google.
  ///
  /// Should only be used if you're creating your own custom sign-in form
  Future<void> signInWithGoogle() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .signInWithGoogle();
  }

  /// Perform sign-in with Github.
  ///
  /// Should only be used if you're creating your own custom sign-in form
  Future<void> signInWithGithub() async {
    // Provider.of<SignInHandlerStateNotifier>(this, listen: false)
    //     .signInWithGithub();
    if (kIsWeb) {
      Provider.of<SignInHandlerStateNotifier>(this, listen: false)
          .signInWithGithub();
    } else {
      const String url = "https://github.com/login/oauth/authorize" +
          "?client_id=" +
          '4caa70fa4c69a93b385b' +
          "&scope=public_repo%20read:user%20user:email";
      AuthProviderResult result = await Navigator.push<AuthProviderResult>(
        this,
        MaterialPageRoute(
            builder: (context) => const AuthWebView(
                  providerType: ProviderType.github,
                  selectedUrl: url,
                ),
            maintainState: true),
      );
      result = result ?? const AuthProviderResult.cancelled();
      Provider.of<SignInHandlerStateNotifier>(this, listen: false)
          .signInWithGithub(result);
    }
  }

  /// Perform sign-in with Facebook.
  ///
  /// Should only be used if you're creating your own custom sign-in form
  Future<void> signInWithFacebook() async {
    if (kIsWeb) {
      Provider.of<SignInHandlerStateNotifier>(this, listen: false)
          .signInWithFacebook();
    } else {
      String your_client_id =
          "enter your app FBID here (DON'T add secret app code)";
      String your_redirect_url =
          "https://www.facebook.com/connect/login_success.html";
      final String result = await Navigator.push(
        this,
        MaterialPageRoute(
            builder: (context) => AuthWebView(
                  providerType: ProviderType.facebook,
                  selectedUrl:
                      'https://www.facebook.com/dialog/oauth?client_id=$your_client_id&redirect_uri=$your_redirect_url&response_type=token&scope=email,public_profile,',
                ),
            maintainState: true),
      );
      Provider.of<SignInHandlerStateNotifier>(this, listen: false)
          .signInWithFacebook(result);
    }
    // if (result != null) {
    // try {
    //   final facebookAuthCred =
    //       FacebookAuthProvider.getCredential(accessToken: result);
    //   // final user = await firebaseAuth.signInWithCredential(facebookAuthCred);
    // } catch (e) {
    //   print(e);
    // }
  }

  /// Sign in with Credentials
  ///
  /// Should only be used if your implementing your own third party sign-in
  Future<void> signInWithCredential(AuthCredential credential) async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .signInWithCredential(credential);
  }

  /// Perform Firebase anonymous sign-in
  ///
  /// Should only be used if you're creating your own custom sign-in form
  Future<void> signInAnonymously() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .signInAnonymously();
  }

  /// Wether Lit Firebase is currently attempting to authenticate. Can be used
  /// to show a loading indicator.
  ///
  /// Should only be used in the build method. For example:
  ///
  /// ```dart
  /// Widget build(BuildContext context) {
  ///   final isSubmitting = context.isSubmitting();
  ///   return Visibility(
  ///     visible: isSubmitting,
  ///     child: CircularProgressIndicator(),
  ///   );
  /// }
  /// ```
  bool isSubmitting() {
    // return Provider.of<SignInHandlerState>(this).isSubmitting;
    return select((SignInHandlerState state) => state.isSubmitting);
  }

  /// Retrieves the currently signed in user
  User getSignedInUser() {
    return Provider.of<User>(this, listen: false);
  }
}
