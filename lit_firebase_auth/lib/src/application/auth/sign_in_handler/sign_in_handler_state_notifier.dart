import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:lit_firebase_auth/src/presentation/core/auth_provider_result.dart';
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

    _performActionOnAuthFacadeWithSignInProviders(
      () => _authFacade.signInWithGoogle(),
    );
    // state = state.copyWith(
    //   isSubmitting: true,
    //   authFailureOrSuccessOption: none(),
    // );

    // final auth = await _authFacade.signInWithGoogle();

    // if (mounted) {
    //   state = state.copyWith(
    //     isSubmitting: false,
    //     authFailureOrSuccessOption: some(auth),
    //   );
    // }
  }

  Future<void> signInWithApple() async {
    if (_authProviders.apple == null) {
      throw AuthProviderNotEnabled('Apple');
    }

    await _performActionOnAuthFacadeWithSignInProviders(
      () => _authFacade.signInWithApple(
        webAuthenticationOptions: _authProviders.apple.webAuthenticationOptions,
      ),
    );
    // state = state.copyWith(
    //   isSubmitting: true,
    //   authFailureOrSuccessOption: none(),
    // );

    // final auth = await _authFacade.signInWithApple(
    //   webAuthenticationOptions: _authProviders.apple.webAuthenticationOptions,
    // );

    // if (mounted) {
    //   state = state.copyWith(
    //     isSubmitting: false,
    //     authFailureOrSuccessOption: some(auth),
    //   );
    // }
  }

  Future<void> signInWithGithub([AuthProviderResult result]) async {
    // if (!_authProviders.github) {
    //   throw AuthProviderNotEnabled('Github');
    // }

    if (result != null) {
      result.map(
        success: (s) async {
          print('find me brosepth');
          print(s.token);
          final githubAuthCred =
              GithubAuthProvider.getCredential(token: s.token);
          await _performActionOnAuthFacadeWithSignInProviders(
            () => _authFacade.signInWithCredential(githubAuthCred),
          );
        },
        failure: (_) {
          _setFailureState();
        },
        cancelled: (_) {
          _setCancelledState();
        },
      );
    } else {
      await _performActionOnAuthFacadeWithSignInProviders(
        () => _authFacade.signInWithGithub(),
      );
    }

    // await _performActionOnAuthFacadeWithSignInProviders(
    //   () => _authFacade.signInWithGithub(),
    // );
    // state = state.copyWith(
    //   isSubmitting: true,
    //   authFailureOrSuccessOption: none(),
    // );

    // final auth = await _authFacade.signInWithGithub();

    // if (mounted) {
    //   state = state.copyWith(
    //     isSubmitting: false,
    //     authFailureOrSuccessOption: some(auth),
    //   );
    // }

    print(result);

    // if (accessToken != null) {
    //   try {
    //     final githubAuthCred =
    //         GithubAuthProvider.getCredential(token: accessToken);
    //     await _performActionOnAuthFacadeWithSignInProviders(
    //       () => _authFacade.signInWithCredential(githubAuthCred),
    //     );
    //   } catch (e) {
    //     print(e);
    //     if (mounted) {
    //       state = state.copyWith(
    //         isSubmitting: false,
    //         authFailureOrSuccessOption:
    //             some(const Auth.failure(AuthFailure.serverError())),
    //       );
    //     }
    //   }
    // }
    // if (credential != null) {
    //   await _performActionOnAuthFacadeWithSignInProviders(
    //     () => _authFacade.signInWithCredential(credential),
    //   );
    // }
    // else {
    //   await _performActionOnAuthFacadeWithSignInProviders(
    //     () => _authFacade.signInWithGithub(),
    //   );
    // }
  }

  Future<void> signInWithFacebook([String accessToken]) async {
    // if (!_authProviders.github) {
    //   throw AuthProviderNotEnabled('Github');
    // }

    if (accessToken != null) {
      try {
        final facebookAuthCred =
            FacebookAuthProvider.getCredential(accessToken: accessToken);
        await _performActionOnAuthFacadeWithSignInProviders(
          () => _authFacade.signInWithCredential(facebookAuthCred),
        );
      } catch (e) {
        print(e);
        if (mounted) {
          state = state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption:
                some(const Auth.failure(AuthFailure.serverError())),
          );
        }
      }
    }
    // if (credential != null) {
    //   await _performActionOnAuthFacadeWithSignInProviders(
    //     () => _authFacade.signInWithCredential(credential),
    //   );
    // }
    else {
      await _performActionOnAuthFacadeWithSignInProviders(
        () => _authFacade.signInWithFacebook(),
      );
    }
  }

  Future<void> signInWithCredential(AuthCredential credential) async {
    await _performActionOnAuthFacadeWithSignInProviders(
      () => _authFacade.signInWithCredential(credential),
    );
    // state = state.copyWith(
    //   isSubmitting: true,
    //   authFailureOrSuccessOption: none(),
    // );

    // final auth = await _authFacade.signInWithCredential(credential);

    // if (mounted) {
    //   state = state.copyWith(
    //     isSubmitting: false,
    //     authFailureOrSuccessOption: some(auth),
    //   );
    // }
  }

  Future<void> signInAnonymously() async {
    if (!_authProviders.anonymous) {
      throw AuthProviderNotEnabled('Anonymous');
    }

    await _performActionOnAuthFacadeWithSignInProviders(
      () => _authFacade.signInAnonymously(),
    );
    // state = state.copyWith(
    //   isSubmitting: true,
    //   authFailureOrSuccessOption: none(),
    // );
    // final auth = await _authFacade.signInAnonymously();

    // if (mounted) {
    //   state = state.copyWith(
    //     isSubmitting: false,
    //     authFailureOrSuccessOption: some(auth),
    //   );
    // }
  }

  void _setCancelledState() {
    if (mounted) {
      state = state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(
          const Auth.failure(AuthFailure.cancelledByUser()),
        ),
      );
    }
  }

  void _setFailureState() {
    if (mounted) {
      state = state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(
          const Auth.failure(AuthFailure.serverError()),
        ),
      );
    }
  }

  Future<void> _performActionOnAuthFacadeWithSignInProviders(
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
}
