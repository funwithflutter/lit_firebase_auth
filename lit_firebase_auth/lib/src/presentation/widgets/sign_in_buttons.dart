import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import '../core/auth_config.dart';
import '../core/extensions.dart';

class _ButtonConfigOverride extends StatelessWidget {
  const _ButtonConfigOverride({
    Key key,
    @required this.buttonConfig,
    @required this.onPressed,
  })  : assert(buttonConfig != null),
        super(key: key);

  final ButtonConfig buttonConfig;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final button = buttonConfig.type.map(
      raised: (_) => RaisedButton(
        onPressed: onPressed,
        child: buttonConfig.child,
      ),
      flat: (_) => FlatButton(
        onPressed: onPressed,
        child: buttonConfig.child,
      ),
    );

    return ButtonTheme.fromButtonThemeData(
      data: buttonConfig.themeData,
      child: button,
    );
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
    this.config,
  }) : super(key: key);

  final ButtonConfig config;

  @override
  Widget build(BuildContext context) {
    if (config != null) {
      return _ButtonConfigOverride(
        buttonConfig: ButtonConfig(
          type: config?.type ?? const ButtonType.raised(),
          themeData: config?.themeData ??
              const ButtonThemeData(
                buttonColor: Colors.lightBlue,
              ),
          child: config?.child ??
              const Text(
                'SIGN IN WITH GOOGLE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        onPressed: () {
          context.signInWithGoogle();
        },
      );
    } else {
      return GoogleSignInButton(
        onPressed: () {
          context.signInWithGoogle();
        },
      );
    }
  }
}

/// Button to sign-in with Apple on Firebase
///
/// Make sure to enable Apple sign-in in your Firebase Authentication
/// console
///
/// Create your own sign-in button by calling
/// `context.signInWithApple();` in the [onPressed] handler
class SignInWithAppleLitButton extends StatelessWidget {
  const SignInWithAppleLitButton({
    Key key,
    this.config,
  }) : super(key: key);

  final ButtonConfig config;

  @override
  Widget build(BuildContext context) {
    if (config != null) {
      return _ButtonConfigOverride(
        buttonConfig: ButtonConfig(
          type: config?.type ?? const ButtonType.raised(),
          themeData: config?.themeData ??
              const ButtonThemeData(
                buttonColor: Colors.lightBlue,
              ),
          child: config?.child ??
              const Text(
                'SIGN IN WITH APPLE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        onPressed: () {
          context.signInWithGoogle();
        },
      );
    } else {
      return SizedBox(
        width: 250,
        child: AppleSignInButton(
          onPressed: () {
            context.signInWithApple();
          },
        ),
      );
    }
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
    this.config,
  }) : super(key: key);

  final ButtonConfig config;

  static final _buttonColor = Colors.blue[400];

  static const _buttonHeight = 40.0;

  @override
  Widget build(BuildContext context) {
    return _ButtonConfigOverride(
      buttonConfig: ButtonConfig(
        themeData: config?.themeData ??
            ButtonThemeData(
              buttonColor: _buttonColor,
              height: _buttonHeight,
            ),
        type: config?.type ?? const ButtonType.raised(),
        child: config?.child ??
            Text(
              'SIGN IN ANONYMOUSLY',
              style: TextStyle(
                color: _buttonColor.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
              ),
            ),
      ),
      onPressed: () {
        context.signInAnonymously();
      },
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
    this.config,
  }) : super(key: key);

  final ButtonConfig config;

  static const _buttonHeight = 40.0;

  @override
  Widget build(BuildContext context) {
    final accentColor = Theme.of(context).accentColor;
    return _ButtonConfigOverride(
      buttonConfig: ButtonConfig(
        type: config?.type ?? const ButtonType.raised(),
        themeData: config?.themeData ??
            Theme.of(context).buttonTheme.copyWith(
                  buttonColor: accentColor,
                  height: _buttonHeight,
                ),
        child: config?.child ??
            Text(
              'SIGN IN',
              style: TextStyle(
                color: accentColor.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
              ),
            ),
      ),
      onPressed: () {
        context.signInWithEmailAndPassword();
      },
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

  static const _buttonHeight = 40.0;

  @override
  Widget build(BuildContext context) {
    return _ButtonConfigOverride(
      buttonConfig: ButtonConfig(
        type: config?.type ?? const ButtonType.flat(),
        themeData: config?.themeData ??
            const ButtonThemeData(
              buttonColor: Colors.transparent,
              height: _buttonHeight,
            ),
        child: config?.child ?? const Text('REGISTER'),
      ),
      onPressed: () {
        context.registerWithEmailAndPassword();
      },
    );
  }
}
