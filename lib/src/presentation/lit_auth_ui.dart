import 'package:dartz/dartz.dart' as func;
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../lit_firebase_auth.dart';
import '../application/auth/sign_in_handler/sign_in_handler_state.dart';
import '../application/auth/sign_in_handler/sign_in_handler_state_notifier.dart';
import '../domain/auth/auth.dart';
import '../domain/auth/auth_failure.dart';
import '../domain/auth/auth_providers.dart';
import '../domain/auth/user.dart';
import 'core/auth_config.dart';
import 'core/notifications.dart';
import 'lit_standard_sign_in_screen.dart';

class LitAuthState extends StatelessWidget {
  /// A widget to switch between child widgets, depending on the
  /// current authentication state.
  ///
  /// Updates will automatically be triggered when the user's authentication state
  /// changes.
  ///
  /// You can easily create your own auth state subscription by calling the
  /// following in a widget build method:
  /// `final user = context.watch<User>();`
  /// Which will listen to the current [LitUser] object.
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
  /// Defaults to a `CircularProgressIndicator()`
  final Widget unintialized;

  @override
  Widget build(BuildContext context) {
    final user = context.watch<LitUser>();
    return user.when(
      (dynamic user) => authenticated,
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

/// TypeDef callback for authentication failure
typedef AuthFailureCallback = void Function(AuthFailure failure);

/// TypeDef callback for link merge conflicts
typedef LinkMergeConflictCallback = void Function(LinkMergeConflict conflict);

class LitAuth extends StatelessWidget {
  /// Configure the sign-in UI and provide custom decoration/configuration for
  /// the sign-in elements. Leaving this empty will show the standard sign-in
  /// widgets.
  ///
  /// For example, to override the standard email [InputDecoration]
  /// just provide a custom [InputDecoration] for the [emailTextFormField]:
  /// ```dart
  /// LitAuth(
  ///   config: AuthConfig(
  ///     emailTextFormField: InputDecoration(labelText: 'My beautiful label'),
  /// )
  /// ```
  /// {@end-tool}
  final AuthConfig config;

  /// Callback to be called after successful authentication
  final VoidCallback onAuthSuccess;

  /// Callback to be called if authentication fails
  final AuthFailureCallback onAuthFailure;
  
  /// Callback to be called to handle link merge conflicts
  final LinkMergeConflictCallback onLinkMergeConflict;

  /// Configuration for custom error notifications
  final NotificationConfig errorNotification;

  /// Configuration for custom success notifications
  final NotificationConfig successNotification;

  /// The main widget to do any form of Authentication using **LitFirebaseAuth**.
  ///
  /// Must be below a [Scaffold].
  ///
  /// This widget is used to configure the UI, provide decorations/themes, or
  /// create a completely custom sign-in form.
  ///
  /// To get started:
  /// ```dart
  /// LitAuth()
  /// ```
  /// {@end-tool}
  /// This will use the defaults configuration and UI theming.
  ///
  /// Provide an [AuthConfig] parameter to override theming and decoration of the
  /// standard sign-in form.
  ///
  /// Or, to create a completely custom sign-in form, make use of:
  /// ```dart
  /// LitAuth.custom(
  ///   child: YourCustomSignInWidget(),
  /// )
  /// ```
  ///
  /// For more theming and custom sign-in widgets, please see the README.md file
  ///
  /// **Auth Success / Auth Failure**
  ///
  /// You can provide callbacks for authentication, with [onAuthSuccess] and
  /// [onAuthFailure]
  /// ```dart
  /// LitAuth(
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
  const LitAuth({
    Key key,
    this.config,
    this.onAuthSuccess,
    this.onAuthFailure,
    this.onLinkMergeConflict,
    this.errorNotification = const NotificationConfig(),
    this.successNotification = const NotificationConfig(),
  }) : super(key: key);

  /// A factory constructor to create a custom [LitAuth] widget. Instead of using
  /// the standard sign-in widgets you can now provide your own custom
  /// sign-in form.
  ///
  /// For example:
  /// ```dart
  /// LitAuth.custom(
  ///    builder: (context, child) {
  ///      return RaisedButton(
  ///        onPressed: () {
  ///          context.signInAnonymously();
  ///        },
  ///        child: Text('Sign in'),
  ///      );
  ///    },
  ///  )
  /// ```
  ///
  /// See the documentation for more examples.
  const factory LitAuth.custom({
    Key key,
    VoidCallback onAuthSuccess,
    AuthFailureCallback onAuthFailure,
    NotificationConfig errorNotification,
    NotificationConfig successNotification,
    TransitionBuilder builder,
    Widget child,
  }) = _LitAuthCustom;

  @override
  Widget build(BuildContext context) {
    return _SignInBuilder(
      onAuthFailure: onAuthFailure,
      onAuthSuccess: onAuthSuccess,
      onLinkMergeConflict: onLinkMergeConflict,
      errorNotification: errorNotification,
      successNotification: successNotification,
      child: StandardSignInWidget(
        config: config,
      ),
    );
  }
}

class _SignInBuilder extends StatelessWidget {
  const _SignInBuilder({
    Key key,
    @required this.onAuthFailure,
    @required this.onAuthSuccess,
    @required this.onLinkMergeConflict,
    this.builder,
    @required this.errorNotification,
    @required this.successNotification,
    this.child,
  }) : super(key: key);

  final VoidCallback onAuthSuccess;
  final AuthFailureCallback onAuthFailure;
  final LinkMergeConflictCallback onLinkMergeConflict;
  final TransitionBuilder builder;
  final NotificationConfig errorNotification;
  final NotificationConfig successNotification;
  final Widget child;

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
            WidgetsBinding.instance.addPostFrameCallback(
              (_) {
                NotificationHelper.success(
                        message: 'Signed in',
                        config: successNotification,
                        context: context)
                    .show(context);
              },
            );
          },
          failure: (f) {
            if (onAuthFailure != null) {
              WidgetsBinding.instance
                  .addPostFrameCallback((_) => onAuthFailure(f.failure));
            }
            if (onLinkMergeConflict != null) {
              // Skip showing error if link merge conflicts are handled
              f.failure.maybeWhen(
                  linkMergeConflict: (credential) => WidgetsBinding.instance
                      .addPostFrameCallback((_) => onLinkMergeConflict(f.failure)),
                  orElse: () { showError(context, f.failure); }
              );
            } else {
              showError(context, f.failure);
            }
          },
        );
      },
    );
  }

  void showError(BuildContext context, AuthFailure failure) {
    WidgetsBinding.instance.addPostFrameCallback(
          (_) =>
          NotificationHelper.error(
            context: context,
            config: errorNotification,
            message: failure.map(
              cancelledByUser: (_) => 'Cancelled',
              serverError: (_) => 'Server error',
              emailAlreadyInUse: (_) => 'Email already in use',
              invalidEmailAndPasswordCombination: (_) =>
              'Invalid email and password combination',
              malformed: (_) => 'Not a valid email address',
              userDisabled: (_) =>
              'User disabled. Contact customer care for assistance',
              tooManyRequests: (_) =>
              'Too many unsuccessful login attempts. Please try again later',
              linkMergeConflict: (_) => 'Account already exists for sign in method',),
          ).show(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SignInHandlerStateNotifier,
        SignInHandlerState>(
      create: (context) => SignInHandlerStateNotifier(
        authProviders: Provider.of<AuthProviders>(context, listen: false),
        authFacade: Provider.of<AuthFacade>(context, listen: false),
      ),
      builder: (context, _) {
        context.select(
          (SignInHandlerState state) {
            _handleAuthFailureOrSuccess(
                context, state.authFailureOrSuccessOption);
          },
        );
        if (builder != null) {
          return builder(context, child);
        }
        return child;
      },
    );
  }
}

class _LitAuthCustom extends LitAuth {
  const _LitAuthCustom({
    Key key,
    VoidCallback onAuthSuccess,
    AuthFailureCallback onAuthFailure,
    LinkMergeConflictCallback onLinkMergeConflict,
    NotificationConfig errorNotification = const NotificationConfig(),
    NotificationConfig successNotification = const NotificationConfig(),
    this.builder,
    @required this.child,
  }) : super(
          key: key,
          onAuthSuccess: onAuthSuccess,
          onAuthFailure: onAuthFailure,
          onLinkMergeConflict: onLinkMergeConflict,
          errorNotification: errorNotification,
          successNotification: successNotification,
        );

  final Widget child;
  final TransitionBuilder builder;

  @override
  Widget build(BuildContext context) {
    return _SignInBuilder(
      onAuthSuccess: onAuthSuccess,
      onAuthFailure: onAuthFailure,
      onLinkMergeConflict: onLinkMergeConflict,
      builder: builder,
      errorNotification: errorNotification,
      successNotification: successNotification,
      child: child,
    );
  }
}
