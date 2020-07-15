import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../application/auth/sign_in_handler/sign_in_handler_state_notifier.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';

extension AuthContext on BuildContext {
  Future<void> signOut() async {
    Provider.of<AuthFacade>(this, listen: false).signOut();
  }

  Future<void> registerWithEmailAndPassword() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .registerWithEmailAndPassword();
  }

  Future<void> signInWithEmailAndPassword() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .signInWithEmailAndPassword();
  }

  Future<void> signInWithGoogle() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .signInWithGoogle();
  }

  Future<void> signInAnonymously() async {
    Provider.of<SignInHandlerStateNotifier>(this, listen: false)
        .signInAnonymously();
  }

  User getSignedInUser() {
    return Provider.of<User>(this, listen: false);
  }
}
