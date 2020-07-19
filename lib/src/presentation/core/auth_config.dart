import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_config.freezed.dart';

@freezed
abstract class AuthConfig with _$AuthConfig {
  const factory AuthConfig.standard({
    Widget title,
    ButtonConfig emailButton,
    ButtonConfig passwordButton,
    ButtonConfig anonymousButton,
    ButtonConfig googleButton,
    InputDecoration emailTextFormField,
    InputDecoration passwordTextFormField,
  }) = AuthConfigStandard;
  const factory AuthConfig.custom({
    @required Widget signInScreen,
  }) = AuthConfigCustom;
}

class ButtonConfig {
  final ButtonThemeData themeData;
  final ButtonType type;
  final Widget child;
  ButtonConfig({
    this.themeData,
    this.type,
    this.child,
  });
}

@freezed
abstract class ButtonType with _$ButtonType {
  const factory ButtonType.raised() = _ButtonTypeRaised;
  const factory ButtonType.flat() = _ButtonTypeFlat;
}
