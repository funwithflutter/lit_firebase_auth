import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_config.freezed.dart';

@freezed
abstract class AuthConfig with _$AuthConfig {
  const factory AuthConfig.standard({
    // @Default(true) bool enableEmailAndPassword,
    // @Default(false) bool enableAnonymous,
    // @Default(false) bool enableGoogle,
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
  final Widget child;
  final ButtonThemeData themeData;

  ButtonConfig({
    this.child,
    this.themeData,
  });
}
