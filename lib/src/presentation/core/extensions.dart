import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../application/auth/sign_in_handler/sign_in_handler_state_notifier.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';

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

  /// Perform sign-in with Google.
  ///
  /// Should only be used if you're creating your own custom sign-in form
  Future<void> signInWithGoogle() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .signInWithGoogle();
  }

  /// Perform Firebase anonymous sign-in
  ///
  /// Should only be used if you're creating your own custom sign-in form
  Future<void> signInAnonymously() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .signInAnonymously();
  }

  /// Retrieves the currently signed in user
  User getSignedInUser() {
    return Provider.of<User>(this, listen: false);
  }
}
