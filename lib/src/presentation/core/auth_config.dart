import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_config.freezed.dart';

@freezed

/// The UI configuration when using the standard [LitAuth] widget.
abstract class AuthConfig with _$AuthConfig {
  const factory AuthConfig({
    Widget title,
    ButtonConfig emailButton,
    ButtonConfig passwordButton,
    ButtonConfig anonymousButton,
    ButtonConfig googleButton,
    ButtonConfig githubButton,
    InputDecoration emailTextFormField,
    InputDecoration passwordTextFormField,
  }) = _AuthConfig;
}

@freezed

/// Provide configuration and themes for the standard sign-in buttons
abstract class ButtonConfig with _$ButtonConfig {
  const factory ButtonConfig({
    ButtonThemeData themeData,
    ButtonType type,
    Widget child,
  }) = _ButtonConfig;
}

@freezed

/// Specify different button types. For example, [RaisedButton] or [FlatButton]
abstract class ButtonType with _$ButtonType {
  const factory ButtonType.raised() = _ButtonTypeRaised;
  const factory ButtonType.flat() = _ButtonTypeFlat;
}
