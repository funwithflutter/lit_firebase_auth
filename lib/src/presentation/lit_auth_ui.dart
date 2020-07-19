import 'package:dartz/dartz.dart' as func;
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../application/auth/sign_in_handler/sign_in_handler_state.dart';
import '../application/auth/sign_in_handler/sign_in_handler_state_notifier.dart';
import '../domain/auth/auth.dart';
import '../domain/auth/auth_failure.dart';
import '../domain/auth/user.dart';
import 'core/auth_config.dart';
import 'lit_standard_sign_in_screen.dart';

/// A convenience widget to display a specific widget depending on the
/// current authentication state.
///
/// Updates will automatically be triggered when the user's authentication state
/// changes.
///
/// You can easily create your own subscription by calling the following in a
/// widget build method:
/// `final user = context.watch<User>();`
/// Which will return the current [User] object.
class LitAuthState extends StatelessWidget {
  const LitAuthState({
    Key key,
    @required this.authenticated,
    @required this.unauthenticated,
    this.unintialized,
  }) : super(key: key);

  /// The widget to be displayed when authenticated
  final Widget authenticated;

  /// The widget to be displayed when not authenticated
  final Widget unauthenticated;

  /// The widget to be displayed while Firebase is initializing.
  /// This should only show on Web.
  ///
  /// Defaults to a `CircularProgressIndicator`
  final Widget unintialized;

  @override
  Widget build(BuildContext context) {
    final user = context.watch<User>();
    return user.when(
      (user) => authenticated,
      empty: () => unauthenticated,
      initializing: () => unintialized ?? _loading(),
    );
  }

  SizedBox _loading() {
    return const SizedBox(
      height: 100,
      width: 100,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

typedef AuthFailureCallback = void Function(AuthFailure failure);

/// The main widget to do any form of Authentication using **LitFirebaseAuth**.
/// This widget is used to configure the UI, provide decorations/themes, or
/// override the standard sign-in widget with a custom implementation.
///
/// The [config] parameter is required.
/// The easiest way to get started is to set the config to standard.
/// ```dart
/// LitAuth(
///   config: AuthConfig.standard()
/// )
/// ```
/// {@end-tool}
/// This will use the defaults configuration and UI theming.
///
/// For theming and custom Sign-in widgets, please see the
/// README.md file
///
/// You can provide callbacks for authentication, with
/// [onAuthSuccess] and [onAuthFailure].
/// ```dart
/// LitAuth(
///   config: AuthConfig.standard()
///   onAuthFailure: (failure) {
///     print('Auth failed.');
///     // todo: show error message
///   },
///   onAuthSuccess: () {
///     print('Auth success.');
///     // todo: navigate to authenticated screen
///   },
/// )
/// ```
/// {@end-tool}
///
class LitAuth extends StatelessWidget {
  /// Configure the sign-in UI. `AuthConfig.standard()` will show the
  /// standard sign-in widget. A custom implementation can be provided with
  /// `AuthConfig.custom()`
  ///
  /// The easiest way to get started is to set the config to standard.
  /// ```dart
  /// LitAuth(
  ///   config: AuthConfig.standard()
  /// )
  /// ```
  /// {@end-tool}
  /// This will use the defaults configuration and UI theming.
  ///
  /// It's easy to provide custom decoration/configuration for the sign-in
  /// elements. For example, to override the standard email [InputDecoration]
  /// just provide a custom [InputDecoration] for the [emailTextFormField]:
  /// ```dart
  /// LitAuth(
  ///   config: AuthConfig.standard(
  ///   emailTextFormField: InputDecoration(labelText: 'My beautiful label'),
  /// )
  /// ```
  /// {@end-tool}
  final AuthConfig config;
  final VoidCallback onAuthSuccess;
  final AuthFailureCallback onAuthFailure;

  const LitAuth({
    Key key,
    @required this.config,
    this.onAuthSuccess,
    this.onAuthFailure,
  })  : assert(config != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SignInHandlerStateNotifier,
        SignInHandlerState>(
      create: (context) => SignInHandlerStateNotifier(),
      child: _LitAuthImpl(
        config: config,
        onAuthFailure: onAuthFailure,
        onAuthSuccess: onAuthSuccess,
      ),
    );
  }
}

class _LitAuthImpl extends StatelessWidget {
  const _LitAuthImpl({
    Key key,
    this.config,
    @required this.onAuthSuccess,
    @required this.onAuthFailure,
  }) : super(key: key);

  final AuthConfig config;
  final VoidCallback onAuthSuccess;
  final AuthFailureCallback onAuthFailure;

  void _handleAuthFailureOrSuccess(
      BuildContext context, func.Option<Auth> authFailureOrSuccessOption) {
    authFailureOrSuccessOption.fold(
      () => () {}, // don't do anything, no auth request has been made
      (auth) {
        auth?.map(
          success: (_) {
            if (onAuthSuccess != null) {
              WidgetsBinding.instance
                  .addPostFrameCallback((_) => onAuthSuccess());
            }
          },
          failure: (f) {
            if (onAuthFailure != null) {
              WidgetsBinding.instance
                  .addPostFrameCallback((_) => onAuthFailure(f.failure));
            }
            WidgetsBinding.instance.addPostFrameCallback(
              (_) => FlushbarHelper.createError(
                message: f.failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                  malformed: (_) => 'Not a valid email address',
                  userDisabled: (_) =>
                      'User disabled. Contact customer care for assistance',
                ),
              ).show(context),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    context.select(
      (SignInHandlerState state) {
        _handleAuthFailureOrSuccess(context, state.authFailureOrSuccessOption);
      },
    );
    return config.map(
        standard: (c) => StandardSignInWidget(config: c),
        custom: (c) => c.signInScreen);
  }
}
