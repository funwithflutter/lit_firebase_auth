import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../../domain/auth/auth.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';
import 'sign_in_handler_state.dart';

class SignInHandlerStateNotifier extends StateNotifier<SignInHandlerState>
    with LocatorMixin {
  SignInHandlerStateNotifier() : super(SignInHandlerState.initial());

  void emailChanged(EmailAddress e) {
    state = state.copyWith(
      emailAddress: e,
      authFailureOrSuccessOption: none(),
    );
  }

  void passwordChanged(Password p) {
    state = state.copyWith(
      password: p,
      authFailureOrSuccessOption: none(),
    );
  }

  Future<void> registerWithEmailAndPassword() async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
        read<AuthFacade>().registerWithEmailAndPassword);
  }

  Future<void> signInWithEmailAndPassword() async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
        read<AuthFacade>().signInWithEmailAndPassword);
  }

  Future<void> signInWithGoogle() async {
    state = state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    final auth = await read<AuthFacade>().signInWithGoogle();
    state = state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(auth),
    );
  }

  Future<void> signInAnonymously() async {
    state = state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    final auth = await read<AuthFacade>().signInAnonymously();
    state = state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(auth),
    );
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Auth> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    /* Invalid email or password. Show errors and return */
    if (!isEmailValid || !isPasswordValid) {
      state = state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: none(),
      );
      return; // quit
    }

    state = state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );

    final auth = await forwardedCall(
      emailAddress: state.emailAddress,
      password: state.password,
    );

    state = state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: some(auth),
    );
  }
}
