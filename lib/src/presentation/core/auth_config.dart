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
    InputDecoration emailTextFormField,
    InputDecoration passwordTextFormField,
  }) = _AuthConfig;
}

// @freezed

// /// Provide configuration and themes for the standard sign-in buttons
// abstract class ButtonConfig with _$ButtonConfig {
//   const factory ButtonConfig({
//     ButtonThemeData themeData,
//     ButtonType type,
//     Widget child,
//   }) = _ButtonConfig;
// }

// @freezed

// /// Specify different button types. For example, [RaisedButton] or [FlatButton]
// abstract class ButtonType with _$ButtonType {
//   const factory ButtonType.raised() = _ButtonTypeRaised;
//   const factory ButtonType.flat() = _ButtonTypeFlat;
// }

@freezed
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
abstract class AppleButtonConfig with _$AppleButtonConfig {
  const factory AppleButtonConfig({ButtonConfig config}) = _AppleButtonConfig;
  const factory AppleButtonConfig.dark({Widget label}) = _AppleButtonConfigDark;
  const factory AppleButtonConfig.light({Widget label}) =
      _AppleButtonConfigLight;
}

@freezed
abstract class GoogleButtonConfig with _$GoogleButtonConfig {
  const factory GoogleButtonConfig({ButtonConfig config}) = _GoogleButtonConfig;
  const factory GoogleButtonConfig.dark({Widget label}) =
      _GoogleButtonConfigDark;
  const factory GoogleButtonConfig.light({Widget label}) =
      _GoogleButtonConfigLight;
}
