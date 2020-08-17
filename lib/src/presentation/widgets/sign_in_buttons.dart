import 'package:flutter/material.dart';

import '../core/auth_config.dart';
import '../core/extensions.dart';
import 'lit_auth_icons.dart';

const double defaultButtonHeight = 40.0;
const FontWeight defaultFontWeight = FontWeight.w500;
const double defaultFontSize = 16.0;

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

  static const String defaultLabel = 'Continue with Google';

  /// Returns a dark version of the sign in with Google button
  factory SignInWithGoogleButton.dark({Key key, Widget label}) {
    return SignInWithGoogleButton(
      key: key,
      config: ButtonConfig.raisedIcon(
        themedata: const ButtonThemeData(
          buttonColor: Color(0xFF4285F4),
          textTheme: ButtonTextTheme.primary,
          height: defaultButtonHeight,
        ),
        icon: Container(
          height: defaultButtonHeight - 1,
          width: defaultButtonHeight - 1,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.white,
          ),
          child: Center(
            child: LitAuthIcon.google(),
          ),
        ),
        child: label ?? const _ContinueWithLabel(label: defaultLabel),
      ),
    );
  }

  /// Returns a light version of the sign in with Google button
  factory SignInWithGoogleButton.light({Key key, Widget label}) {
    return SignInWithGoogleButton(
      key: key,
      config: ButtonConfig.raisedIcon(
        themedata: const ButtonThemeData(
          buttonColor: Colors.white,
          height: defaultButtonHeight,
        ),
        icon: _IconWrapper(
          buttonHeight: defaultButtonHeight,
          child: LitAuthIcon.google(),
        ),
        child: label ?? const _ContinueWithLabel(label: defaultLabel),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _SignInButton(
      config: config ??
          ButtonConfig.raisedIcon(
            themedata: Theme.of(context)
                .buttonTheme
                .copyWith(height: defaultButtonHeight),
            icon: _IconWrapper(
              buttonHeight: defaultButtonHeight,
              child: LitAuthIcon.google(),
            ),
            child: const _ContinueWithLabel(label: defaultLabel),
          ),
      onPressed: () {
        context.signInWithGoogle();
      },
    );
  }
}

/// Button to sign-in with Apple on Firebase
///
/// Make sure to enable Apple sign-in in your Firebase Authentication
/// console
///
/// Create your own sign-in button by calling
/// `context.signInWithApple();` in the [onPressed] handler
class SignInWithAppleButton extends StatelessWidget {
  const SignInWithAppleButton({
    Key key,
    this.config,
  }) : super(key: key);

  final ButtonConfig config;

  static const String defaultLabel = 'Continue with Apple';

  /// Returns a dark version of the sign in with Apple button
  factory SignInWithAppleButton.dark({Key key, Widget label}) {
    return SignInWithAppleButton(
      key: key,
      config: ButtonConfig.raisedIcon(
        themedata: const ButtonThemeData(
          buttonColor: Colors.black,
          height: defaultButtonHeight,
          textTheme: ButtonTextTheme.primary,
        ),
        child: label ?? const _ContinueWithLabel(label: defaultLabel),
        icon: _IconWrapper(
          buttonHeight: defaultButtonHeight,
          child: LitAuthIcon.appleWhite(),
        ),
      ),
    );
  }

  /// Returns a light version of the sign in with Apple button
  factory SignInWithAppleButton.light({Key key, Widget label}) {
    return SignInWithAppleButton(
      key: key,
      config: ButtonConfig.raisedIcon(
        themedata: const ButtonThemeData(
          buttonColor: Colors.white,
          height: defaultButtonHeight,
          textTheme: ButtonTextTheme.primary,
        ),
        child: label ?? const _ContinueWithLabel(label: defaultLabel),
        icon: _IconWrapper(
          buttonHeight: defaultButtonHeight,
          child: LitAuthIcon.appleBlack(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _SignInButton(
      config: config ??
          ButtonConfig.raisedIcon(
            themedata: Theme.of(context)
                .buttonTheme
                .copyWith(height: defaultButtonHeight),
            icon: _IconWrapper(
              buttonHeight: defaultButtonHeight,
              child: LitAuthIcon.appleBlack(),
            ),
            child: const _ContinueWithLabel(label: defaultLabel),
          ),
      onPressed: () {
        context.signInWithApple();
      },
    );
  }
}

/// Button to sign-in with Github on Firebase
///
/// Make sure to enable Github sign-in in your Firebase Authentication
/// console
///
/// Create your own sign-in button by calling
/// `context.signInWithGithub();` in the [onPressed] handler
class SignInWithGithubButton extends StatelessWidget {
  const SignInWithGithubButton({
    Key key,
    this.config,
  }) : super(key: key);

  final ButtonConfig config;

  static const String defaultLabel = 'Continue with Github';

  @override
  Widget build(BuildContext context) {
    return _SignInButton(
      config: config ??
          ButtonConfig.raisedIcon(
            themedata: Theme.of(context)
                .buttonTheme
                .copyWith(height: defaultButtonHeight),
            icon: _IconWrapper(
              buttonHeight: defaultButtonHeight,
              child: LitAuthIcon.github(),
            ),
            child: const _ContinueWithLabel(label: defaultLabel),
          ),
      onPressed: () {
        context.signInWithGithub();
      },
    );
  }
}

/// Button to sign-in with Twitter on Firebase
///
/// Make sure to enable Twitter sign-in in your Firebase Authentication
/// console
///
/// Create your own sign-in button by calling
/// `context.signInWithTwitter();` in the [onPressed] handler
class SignInWithTwitterButton extends StatelessWidget {
  const SignInWithTwitterButton({
    Key key,
    this.config,
  }) : super(key: key);

  // final ButtonConfig config;
  final ButtonConfig config;

  static const String defaultLabel = 'Continue with Twitter';

  @override
  Widget build(BuildContext context) {
    return _SignInButton(
      config: config ??
          ButtonConfig.raisedIcon(
            themedata: Theme.of(context)
                .buttonTheme
                .copyWith(height: defaultButtonHeight),
            icon: _IconWrapper(
              buttonHeight: defaultButtonHeight,
              child: LitAuthIcon.twitter(),
            ),
            child: const _ContinueWithLabel(label: defaultLabel),
          ),
      onPressed: () {
        context.signInWithTwitter();
      },
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
    this.config,
  }) : super(key: key);

  final ButtonConfig config;

  static const String defaultLabel = 'Continue Anonymously';

  @override
  Widget build(BuildContext context) {
    return _SignInButton(
      config: config ??
          ButtonConfig.raised(
            themedata: Theme.of(context)
                .buttonTheme
                .copyWith(height: defaultButtonHeight, minWidth: 200),
            child: const Text(
              defaultLabel,
              style: TextStyle(
                fontSize: defaultFontSize,
                fontWeight: defaultFontWeight,
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

  static const Widget defaultChild = Text('SIGN IN');

  @override
  Widget build(BuildContext context) {
    return _SignInButton(
      config: config ??
          ButtonConfig.raised(
            themedata: Theme.of(context)
                .buttonTheme
                .copyWith(height: defaultButtonHeight),
            child: defaultChild,
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

  static const Widget defaultChild = Text('REGISTER');

  @override
  Widget build(BuildContext context) {
    return _SignInButton(
      config: config ??
          ButtonConfig.flat(
            themedata: Theme.of(context)
                .buttonTheme
                .copyWith(height: defaultButtonHeight),
            child: defaultChild,
          ),
      onPressed: () {
        context.registerWithEmailAndPassword();
      },
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton({
    Key key,
    @required this.config,
    @required this.onPressed,
  }) : super(key: key);

  final ButtonConfig config;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return config.map(
      raised: (button) => _RaisedSignInButton(
        button: button,
        onPressed: onPressed,
      ),
      raisedIcon: (button) => _RaisedIconSignInButton(
        button: button,
        onPressed: onPressed,
      ),
      flat: (button) => _FlatSignInButton(
        button: button,
        onPressed: onPressed,
      ),
      flatIcon: (button) => _FlatIconSignInButton(
        button: button,
        onPressed: onPressed,
      ),
    );
  }
}

class _RaisedSignInButton extends StatelessWidget {
  const _RaisedSignInButton({
    Key key,
    @required this.button,
    @required this.onPressed,
  })  : assert(button != null),
        assert(onPressed != null),
        super(key: key);

  final ButtonConfigRaised button;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme.fromButtonThemeData(
      data: button.themedata,
      child: RaisedButton(
        onPressed: onPressed,
        child: button.child,
      ),
    );
  }
}

class _RaisedIconSignInButton extends StatelessWidget {
  const _RaisedIconSignInButton({
    Key key,
    @required this.button,
    @required this.onPressed,
  })  : assert(button != null),
        assert(onPressed != null),
        super(key: key);

  final ButtonConfigRaisedIcon button;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme.fromButtonThemeData(
      data: button.themedata,
      child: RaisedButton.icon(
        padding: const EdgeInsets.only(right: 8),
        onPressed: onPressed,
        icon: button.icon,
        label: button.child,
      ),
    );
  }
}

class _FlatSignInButton extends StatelessWidget {
  const _FlatSignInButton({
    Key key,
    @required this.button,
    @required this.onPressed,
  })  : assert(button != null),
        assert(onPressed != null),
        super(key: key);

  final ButtonConfigFlat button;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme.fromButtonThemeData(
      data: button.themedata,
      child: FlatButton(
        onPressed: onPressed,
        child: button.child,
      ),
    );
  }
}

class _FlatIconSignInButton extends StatelessWidget {
  const _FlatIconSignInButton({
    Key key,
    @required this.button,
    @required this.onPressed,
  })  : assert(button != null),
        assert(onPressed != null),
        super(key: key);

  final ButtonConfigFlatIcon button;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme.fromButtonThemeData(
      data: button.themedata,
      child: FlatButton.icon(
        padding: const EdgeInsets.only(right: 8),
        onPressed: onPressed,
        icon: button.icon,
        label: button.child,
      ),
    );
  }
}

class _IconWrapper extends StatelessWidget {
  const _IconWrapper({
    Key key,
    @required this.buttonHeight,
    this.child,
  }) : super(key: key);
  final double buttonHeight;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight - 2,
      width: buttonHeight - 2,
      child: Center(child: child),
    );
  }
}

class _ContinueWithLabel extends StatelessWidget {
  const _ContinueWithLabel({
    Key key,
    @required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 175),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            fontWeight: defaultFontWeight,
            fontSize: defaultFontSize,
          ),
        ),
      ),
    );
  }
}
