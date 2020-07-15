import 'package:flutter/material.dart';

import '../core/auth_config.dart';
import '../core/extensions.dart';

class _ButtonConfigOverride extends StatelessWidget {
  const _ButtonConfigOverride({
    Key key,
    @required this.buttonConfig,
    @required this.onPressed,
    @required this.child,
  }) : super(key: key);

  final ButtonConfig buttonConfig;
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final buttonChild = buttonConfig?.child ?? child;
    final button = RaisedButton(
      onPressed: onPressed,
      child: buttonChild,
    );

    if (buttonConfig?.themeData != null) {
      return ButtonTheme.fromButtonThemeData(
        data: buttonConfig.themeData,
        child: button,
      );
    } else {
      return button;
    }
  }
}

/// Button to sign-in with Google on Firebase
///
/// Make sure to enable Google sign-in in your Firebase Authentication
/// console
///
/// Create your own sign-in button by calling
/// `context.signInWithGoogle();` in the [onPressed] handler
class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        context.signInWithGoogle();
      },
      color: Colors.lightBlue,
      child: const Text(
        'SIGN IN WITH GOOGLE',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/// Button to sign-in anonymously on Firebase
///
/// Make sure to enable Anonymous sign-in in your Firebase Authentication
/// console
///
/// Create your own sign-in button by calling
/// `context.signInAnonymously();` in the [onPressed] handler
class SignInAnonymouslyButton extends StatelessWidget {
  const SignInAnonymouslyButton({
    Key key,
    this.buttonConfig,
  }) : super(key: key);

  final ButtonConfig buttonConfig;

  @override
  Widget build(BuildContext context) {
    return _ButtonConfigOverride(
      buttonConfig: buttonConfig,
      onPressed: () {
        context.signInAnonymously();
      },
      child: const Text(
        'SIGN IN ANONYMOUSLY',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

/// Button to sign-in with Email and Password on Firebase
///
/// Make sure to enable Email and Password sign-in in your Firebase
/// Authentication console
///
/// Create your own sign-in button by calling
/// `context.signInWithEmailAndPassword();` in the [onPressed] handler
class EmailAndPasswordSignInButton extends StatelessWidget {
  const EmailAndPasswordSignInButton({
    Key key,
    this.buttonConfig,
  }) : super(key: key);

  final ButtonConfig buttonConfig;

  @override
  Widget build(BuildContext context) {
    return _ButtonConfigOverride(
      buttonConfig: buttonConfig,
      onPressed: () {
        context.signInWithEmailAndPassword();
      },
      child: const Text('SIGN IN'),
    );
  }
}

/// Button to register with Email and Password on Firebase
///
/// Make sure to enable Email and Password sign-in in your Firebase
/// Authentication console
///
/// Create your own registration button by calling
/// `context.registerWithEmailAndPassword();` in the [onPressed] handler
class EmailAndPasswordRegisterButton extends StatelessWidget {
  const EmailAndPasswordRegisterButton({
    Key key,
    this.config,
  }) : super(key: key);

  final ButtonConfig config;

  @override
  Widget build(BuildContext context) {
    return _ButtonConfigOverride(
      buttonConfig: config,
      onPressed: () {
        context.registerWithEmailAndPassword();
      },
      child: const Text('REGISTER'),
    );
  }
}
