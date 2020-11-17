import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_config.freezed.dart';

@freezed

/// The UI configuration when using the standard [LitAuth] widget.
abstract class AuthConfig with _$AuthConfig {
  const factory AuthConfig({
    Widget title,
    ButtonConfig signInButton,
    ButtonConfig registerButton,
    ButtonConfig anonymousButton,
    GoogleButtonConfig googleButton,
    AppleButtonConfig appleButton,
    ButtonConfig githubButton,
    ButtonConfig twitterButton,
    ButtonConfig facebookButton,
    TextFieldConfig emailTextField,
    TextFieldConfig passwordTextField,
  }) = _AuthConfig;
}

class TextFieldConfig {
  final TextStyle style;
  final InputDecoration inputDecoration;

  TextFieldConfig({
    this.style,
    this.inputDecoration,
  });
}

@freezed

/// Specify different button types. For example [ButtonConfig.raised()]
abstract class ButtonConfig with _$ButtonConfig {
  const factory ButtonConfig.raised({
    @required ButtonThemeData themedata,
    @required Widget child,
  }) = ButtonConfigRaised;
  const factory ButtonConfig.flat({
    @required ButtonThemeData themedata,
    @required Widget child,
  }) = ButtonConfigFlat;
  const factory ButtonConfig.flatIcon({
    @required ButtonThemeData themedata,
    @required Widget icon,
    @required Widget child,
  }) = ButtonConfigFlatIcon;
  const factory ButtonConfig.raisedIcon({
    @required ButtonThemeData themedata,
    @required Widget icon,
    @required Widget child,
  }) = ButtonConfigRaisedIcon;
}

@freezed

/// Configuration for sign in with Apple button
abstract class AppleButtonConfig with _$AppleButtonConfig {
  const factory AppleButtonConfig({ButtonConfig config}) = _AppleButtonConfig;
  const factory AppleButtonConfig.dark({Widget label}) = _AppleButtonConfigDark;
  const factory AppleButtonConfig.light({Widget label}) =
      _AppleButtonConfigLight;
}

@freezed

/// Configuration for sign in with Google button
abstract class GoogleButtonConfig with _$GoogleButtonConfig {
  const factory GoogleButtonConfig({ButtonConfig config}) = _GoogleButtonConfig;
  const factory GoogleButtonConfig.dark({Widget label}) =
      _GoogleButtonConfigDark;
  const factory GoogleButtonConfig.light({Widget label}) =
      _GoogleButtonConfigLight;
}
