import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../../../lit_firebase_auth.dart';
import '../../../domain/auth/auth.dart';
import '../../../domain/auth/exceptions.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';
import 'sign_in_handler_state.dart';

class SignInHandlerStateNotifier extends StateNotifier<SignInHandlerState>
    with LocatorMixin {
  SignInHandlerStateNotifier({
    @required AuthProviders authProviders,
    @required AuthFacade authFacade,
  })  : assert(authProviders != null),
        assert(authFacade != null),
        _authProviders = authProviders,
        _authFacade = authFacade,
        super(SignInHandlerState.initial());

  final AuthProviders _authProviders;
  final AuthFacade _authFacade;

  void reset() {
    if (mounted) {
      state = SignInHandlerState.initial();
    }
  }

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
        _authFacade.registerWithEmailAndPassword);
  }

  Future<void> signInWithEmailAndPassword() async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
        _authFacade.signInWithEmailAndPassword);
  }

  Future<void> signInWithGoogle() async {
    if (!_authProviders.google) {
      throw AuthProviderNotEnabled('Google');
    }

    _performActionOnAuthFacadeWithOAuthProviders(
      () => _authFacade.signInWithGoogle(),
    );
  }

  Future<void> signInWithApple() async {
    if (!_authProviders.apple) {
      throw AuthProviderNotEnabled('Apple');
    }

    _performActionOnAuthFacadeWithOAuthProviders(
      () => _authFacade.signInWithOAuth(
        'apple.com',
        ["email"],
        {"lang": "en"},
      ),
    );
  }

  Future<void> signInWithGithub() async {
    if (!_authProviders.github) {
      throw AuthProviderNotEnabled('Github');
    }

    _performActionOnAuthFacadeWithOAuthProviders(
      () => _authFacade.signInWithOAuth(
        'github.com',
        ["user:email"],
        {"lang": "en"},
      ),
    );
  }

  Future<void> signInWithTwitter() async {
    if (!_authProviders.twitter) {
      throw AuthProviderNotEnabled('Twitter');
    }

    _performActionOnAuthFacadeWithOAuthProviders(
      () => _authFacade.signInWithOAuth(
        'twitter.com',
        ["email"],
        {"lang": "en"},
      ),
    );
  }

  Future<void> signInWithCredential(AuthCredential credential) async {
    _performActionOnAuthFacadeWithOAuthProviders(
      () => _authFacade.signInWithCredential(credential),
    );
  }

  Future<void> signInAnonymously() async {
    if (!_authProviders.anonymous) {
      throw AuthProviderNotEnabled('Anonymous');
    }

    _performActionOnAuthFacadeWithOAuthProviders(
      () => _authFacade.signInAnonymously(),
    );
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Auth> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async {
    if (!_authProviders.emailAndPassword) {
      throw AuthProviderNotEnabled('Email and Password');
    }

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

    // Need to check mounted
    if (mounted) {
      state = state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: some(auth),
      );
    }
  }

  Future<void> _performActionOnAuthFacadeWithOAuthProviders(
    Future<Auth> Function() signInProvider,
  ) async {
    state = state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    final auth = await signInProvider();

    if (mounted) {
      state = state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(auth),
      );
    }
  }
}
