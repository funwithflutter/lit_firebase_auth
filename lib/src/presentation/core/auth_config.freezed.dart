// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthConfigTearOff {
  const _$AuthConfigTearOff();

  AuthConfigStandard standard(
      {Widget title,
      ButtonConfig emailButton,
      ButtonConfig passwordButton,
      ButtonConfig anonymousButton,
      ButtonConfig googleButton,
      InputDecoration emailTextFormField,
      InputDecoration passwordTextFormField}) {
    return AuthConfigStandard(
      title: title,
      emailButton: emailButton,
      passwordButton: passwordButton,
      anonymousButton: anonymousButton,
      googleButton: googleButton,
      emailTextFormField: emailTextFormField,
      passwordTextFormField: passwordTextFormField,
    );
  }

  AuthConfigCustom custom({@required Widget signIn}) {
    return AuthConfigCustom(
      signIn: signIn,
    );
  }
}

// ignore: unused_element
const $AuthConfig = _$AuthConfigTearOff();

mixin _$AuthConfig {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result standard(
            Widget title,
            ButtonConfig emailButton,
            ButtonConfig passwordButton,
            ButtonConfig anonymousButton,
            ButtonConfig googleButton,
            InputDecoration emailTextFormField,
            InputDecoration passwordTextFormField),
    @required Result custom(Widget signIn),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result standard(
        Widget title,
        ButtonConfig emailButton,
        ButtonConfig passwordButton,
        ButtonConfig anonymousButton,
        ButtonConfig googleButton,
        InputDecoration emailTextFormField,
        InputDecoration passwordTextFormField),
    Result custom(Widget signIn),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result standard(AuthConfigStandard value),
    @required Result custom(AuthConfigCustom value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result standard(AuthConfigStandard value),
    Result custom(AuthConfigCustom value),
    @required Result orElse(),
  });
}

abstract class $AuthConfigCopyWith<$Res> {
  factory $AuthConfigCopyWith(
          AuthConfig value, $Res Function(AuthConfig) then) =
      _$AuthConfigCopyWithImpl<$Res>;
}

class _$AuthConfigCopyWithImpl<$Res> implements $AuthConfigCopyWith<$Res> {
  _$AuthConfigCopyWithImpl(this._value, this._then);

  final AuthConfig _value;
  // ignore: unused_field
  final $Res Function(AuthConfig) _then;
}

abstract class $AuthConfigStandardCopyWith<$Res> {
  factory $AuthConfigStandardCopyWith(
          AuthConfigStandard value, $Res Function(AuthConfigStandard) then) =
      _$AuthConfigStandardCopyWithImpl<$Res>;
  $Res call(
      {Widget title,
      ButtonConfig emailButton,
      ButtonConfig passwordButton,
      ButtonConfig anonymousButton,
      ButtonConfig googleButton,
      InputDecoration emailTextFormField,
      InputDecoration passwordTextFormField});
}

class _$AuthConfigStandardCopyWithImpl<$Res>
    extends _$AuthConfigCopyWithImpl<$Res>
    implements $AuthConfigStandardCopyWith<$Res> {
  _$AuthConfigStandardCopyWithImpl(
      AuthConfigStandard _value, $Res Function(AuthConfigStandard) _then)
      : super(_value, (v) => _then(v as AuthConfigStandard));

  @override
  AuthConfigStandard get _value => super._value as AuthConfigStandard;

  @override
  $Res call({
    Object title = freezed,
    Object emailButton = freezed,
    Object passwordButton = freezed,
    Object anonymousButton = freezed,
    Object googleButton = freezed,
    Object emailTextFormField = freezed,
    Object passwordTextFormField = freezed,
  }) {
    return _then(AuthConfigStandard(
      title: title == freezed ? _value.title : title as Widget,
      emailButton: emailButton == freezed
          ? _value.emailButton
          : emailButton as ButtonConfig,
      passwordButton: passwordButton == freezed
          ? _value.passwordButton
          : passwordButton as ButtonConfig,
      anonymousButton: anonymousButton == freezed
          ? _value.anonymousButton
          : anonymousButton as ButtonConfig,
      googleButton: googleButton == freezed
          ? _value.googleButton
          : googleButton as ButtonConfig,
      emailTextFormField: emailTextFormField == freezed
          ? _value.emailTextFormField
          : emailTextFormField as InputDecoration,
      passwordTextFormField: passwordTextFormField == freezed
          ? _value.passwordTextFormField
          : passwordTextFormField as InputDecoration,
    ));
  }
}

class _$AuthConfigStandard
    with DiagnosticableTreeMixin
    implements AuthConfigStandard {
  const _$AuthConfigStandard(
      {this.title,
      this.emailButton,
      this.passwordButton,
      this.anonymousButton,
      this.googleButton,
      this.emailTextFormField,
      this.passwordTextFormField});

  @override
  final Widget title;
  @override
  final ButtonConfig emailButton;
  @override
  final ButtonConfig passwordButton;
  @override
  final ButtonConfig anonymousButton;
  @override
  final ButtonConfig googleButton;
  @override
  final InputDecoration emailTextFormField;
  @override
  final InputDecoration passwordTextFormField;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthConfig.standard(title: $title, emailButton: $emailButton, passwordButton: $passwordButton, anonymousButton: $anonymousButton, googleButton: $googleButton, emailTextFormField: $emailTextFormField, passwordTextFormField: $passwordTextFormField)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthConfig.standard'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('emailButton', emailButton))
      ..add(DiagnosticsProperty('passwordButton', passwordButton))
      ..add(DiagnosticsProperty('anonymousButton', anonymousButton))
      ..add(DiagnosticsProperty('googleButton', googleButton))
      ..add(DiagnosticsProperty('emailTextFormField', emailTextFormField))
      ..add(
          DiagnosticsProperty('passwordTextFormField', passwordTextFormField));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthConfigStandard &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.emailButton, emailButton) ||
                const DeepCollectionEquality()
                    .equals(other.emailButton, emailButton)) &&
            (identical(other.passwordButton, passwordButton) ||
                const DeepCollectionEquality()
                    .equals(other.passwordButton, passwordButton)) &&
            (identical(other.anonymousButton, anonymousButton) ||
                const DeepCollectionEquality()
                    .equals(other.anonymousButton, anonymousButton)) &&
            (identical(other.googleButton, googleButton) ||
                const DeepCollectionEquality()
                    .equals(other.googleButton, googleButton)) &&
            (identical(other.emailTextFormField, emailTextFormField) ||
                const DeepCollectionEquality()
                    .equals(other.emailTextFormField, emailTextFormField)) &&
            (identical(other.passwordTextFormField, passwordTextFormField) ||
                const DeepCollectionEquality().equals(
                    other.passwordTextFormField, passwordTextFormField)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(emailButton) ^
      const DeepCollectionEquality().hash(passwordButton) ^
      const DeepCollectionEquality().hash(anonymousButton) ^
      const DeepCollectionEquality().hash(googleButton) ^
      const DeepCollectionEquality().hash(emailTextFormField) ^
      const DeepCollectionEquality().hash(passwordTextFormField);

  @override
  $AuthConfigStandardCopyWith<AuthConfigStandard> get copyWith =>
      _$AuthConfigStandardCopyWithImpl<AuthConfigStandard>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result standard(
            Widget title,
            ButtonConfig emailButton,
            ButtonConfig passwordButton,
            ButtonConfig anonymousButton,
            ButtonConfig googleButton,
            InputDecoration emailTextFormField,
            InputDecoration passwordTextFormField),
    @required Result custom(Widget signIn),
  }) {
    assert(standard != null);
    assert(custom != null);
    return standard(title, emailButton, passwordButton, anonymousButton,
        googleButton, emailTextFormField, passwordTextFormField);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result standard(
        Widget title,
        ButtonConfig emailButton,
        ButtonConfig passwordButton,
        ButtonConfig anonymousButton,
        ButtonConfig googleButton,
        InputDecoration emailTextFormField,
        InputDecoration passwordTextFormField),
    Result custom(Widget signIn),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (standard != null) {
      return standard(title, emailButton, passwordButton, anonymousButton,
          googleButton, emailTextFormField, passwordTextFormField);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result standard(AuthConfigStandard value),
    @required Result custom(AuthConfigCustom value),
  }) {
    assert(standard != null);
    assert(custom != null);
    return standard(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result standard(AuthConfigStandard value),
    Result custom(AuthConfigCustom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (standard != null) {
      return standard(this);
    }
    return orElse();
  }
}

abstract class AuthConfigStandard implements AuthConfig {
  const factory AuthConfigStandard(
      {Widget title,
      ButtonConfig emailButton,
      ButtonConfig passwordButton,
      ButtonConfig anonymousButton,
      ButtonConfig googleButton,
      InputDecoration emailTextFormField,
      InputDecoration passwordTextFormField}) = _$AuthConfigStandard;

  Widget get title;
  ButtonConfig get emailButton;
  ButtonConfig get passwordButton;
  ButtonConfig get anonymousButton;
  ButtonConfig get googleButton;
  InputDecoration get emailTextFormField;
  InputDecoration get passwordTextFormField;
  $AuthConfigStandardCopyWith<AuthConfigStandard> get copyWith;
}

abstract class $AuthConfigCustomCopyWith<$Res> {
  factory $AuthConfigCustomCopyWith(
          AuthConfigCustom value, $Res Function(AuthConfigCustom) then) =
      _$AuthConfigCustomCopyWithImpl<$Res>;
  $Res call({Widget signIn});
}

class _$AuthConfigCustomCopyWithImpl<$Res>
    extends _$AuthConfigCopyWithImpl<$Res>
    implements $AuthConfigCustomCopyWith<$Res> {
  _$AuthConfigCustomCopyWithImpl(
      AuthConfigCustom _value, $Res Function(AuthConfigCustom) _then)
      : super(_value, (v) => _then(v as AuthConfigCustom));

  @override
  AuthConfigCustom get _value => super._value as AuthConfigCustom;

  @override
  $Res call({
    Object signIn = freezed,
  }) {
    return _then(AuthConfigCustom(
      signIn: signIn == freezed ? _value.signIn : signIn as Widget,
    ));
  }
}

class _$AuthConfigCustom
    with DiagnosticableTreeMixin
    implements AuthConfigCustom {
  const _$AuthConfigCustom({@required this.signIn}) : assert(signIn != null);

  @override
  final Widget signIn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthConfig.custom(signIn: $signIn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthConfig.custom'))
      ..add(DiagnosticsProperty('signIn', signIn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthConfigCustom &&
            (identical(other.signIn, signIn) ||
                const DeepCollectionEquality().equals(other.signIn, signIn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(signIn);

  @override
  $AuthConfigCustomCopyWith<AuthConfigCustom> get copyWith =>
      _$AuthConfigCustomCopyWithImpl<AuthConfigCustom>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result standard(
            Widget title,
            ButtonConfig emailButton,
            ButtonConfig passwordButton,
            ButtonConfig anonymousButton,
            ButtonConfig googleButton,
            InputDecoration emailTextFormField,
            InputDecoration passwordTextFormField),
    @required Result custom(Widget signIn),
  }) {
    assert(standard != null);
    assert(custom != null);
    return custom(signIn);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result standard(
        Widget title,
        ButtonConfig emailButton,
        ButtonConfig passwordButton,
        ButtonConfig anonymousButton,
        ButtonConfig googleButton,
        InputDecoration emailTextFormField,
        InputDecoration passwordTextFormField),
    Result custom(Widget signIn),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (custom != null) {
      return custom(signIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result standard(AuthConfigStandard value),
    @required Result custom(AuthConfigCustom value),
  }) {
    assert(standard != null);
    assert(custom != null);
    return custom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result standard(AuthConfigStandard value),
    Result custom(AuthConfigCustom value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class AuthConfigCustom implements AuthConfig {
  const factory AuthConfigCustom({@required Widget signIn}) =
      _$AuthConfigCustom;

  Widget get signIn;
  $AuthConfigCustomCopyWith<AuthConfigCustom> get copyWith;
}

class _$ButtonTypeTearOff {
  const _$ButtonTypeTearOff();

  _ButtonTypeRaised raised() {
    return const _ButtonTypeRaised();
  }

  _ButtonTypeFlat flat() {
    return const _ButtonTypeFlat();
  }
}

// ignore: unused_element
const $ButtonType = _$ButtonTypeTearOff();

mixin _$ButtonType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result raised(),
    @required Result flat(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result raised(),
    Result flat(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result raised(_ButtonTypeRaised value),
    @required Result flat(_ButtonTypeFlat value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result raised(_ButtonTypeRaised value),
    Result flat(_ButtonTypeFlat value),
    @required Result orElse(),
  });
}

abstract class $ButtonTypeCopyWith<$Res> {
  factory $ButtonTypeCopyWith(
          ButtonType value, $Res Function(ButtonType) then) =
      _$ButtonTypeCopyWithImpl<$Res>;
}

class _$ButtonTypeCopyWithImpl<$Res> implements $ButtonTypeCopyWith<$Res> {
  _$ButtonTypeCopyWithImpl(this._value, this._then);

  final ButtonType _value;
  // ignore: unused_field
  final $Res Function(ButtonType) _then;
}

abstract class _$ButtonTypeRaisedCopyWith<$Res> {
  factory _$ButtonTypeRaisedCopyWith(
          _ButtonTypeRaised value, $Res Function(_ButtonTypeRaised) then) =
      __$ButtonTypeRaisedCopyWithImpl<$Res>;
}

class __$ButtonTypeRaisedCopyWithImpl<$Res>
    extends _$ButtonTypeCopyWithImpl<$Res>
    implements _$ButtonTypeRaisedCopyWith<$Res> {
  __$ButtonTypeRaisedCopyWithImpl(
      _ButtonTypeRaised _value, $Res Function(_ButtonTypeRaised) _then)
      : super(_value, (v) => _then(v as _ButtonTypeRaised));

  @override
  _ButtonTypeRaised get _value => super._value as _ButtonTypeRaised;
}

class _$_ButtonTypeRaised
    with DiagnosticableTreeMixin
    implements _ButtonTypeRaised {
  const _$_ButtonTypeRaised();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ButtonType.raised()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ButtonType.raised'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ButtonTypeRaised);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result raised(),
    @required Result flat(),
  }) {
    assert(raised != null);
    assert(flat != null);
    return raised();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result raised(),
    Result flat(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (raised != null) {
      return raised();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result raised(_ButtonTypeRaised value),
    @required Result flat(_ButtonTypeFlat value),
  }) {
    assert(raised != null);
    assert(flat != null);
    return raised(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result raised(_ButtonTypeRaised value),
    Result flat(_ButtonTypeFlat value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (raised != null) {
      return raised(this);
    }
    return orElse();
  }
}

abstract class _ButtonTypeRaised implements ButtonType {
  const factory _ButtonTypeRaised() = _$_ButtonTypeRaised;
}

abstract class _$ButtonTypeFlatCopyWith<$Res> {
  factory _$ButtonTypeFlatCopyWith(
          _ButtonTypeFlat value, $Res Function(_ButtonTypeFlat) then) =
      __$ButtonTypeFlatCopyWithImpl<$Res>;
}

class __$ButtonTypeFlatCopyWithImpl<$Res> extends _$ButtonTypeCopyWithImpl<$Res>
    implements _$ButtonTypeFlatCopyWith<$Res> {
  __$ButtonTypeFlatCopyWithImpl(
      _ButtonTypeFlat _value, $Res Function(_ButtonTypeFlat) _then)
      : super(_value, (v) => _then(v as _ButtonTypeFlat));

  @override
  _ButtonTypeFlat get _value => super._value as _ButtonTypeFlat;
}

class _$_ButtonTypeFlat
    with DiagnosticableTreeMixin
    implements _ButtonTypeFlat {
  const _$_ButtonTypeFlat();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ButtonType.flat()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ButtonType.flat'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ButtonTypeFlat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result raised(),
    @required Result flat(),
  }) {
    assert(raised != null);
    assert(flat != null);
    return flat();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result raised(),
    Result flat(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flat != null) {
      return flat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result raised(_ButtonTypeRaised value),
    @required Result flat(_ButtonTypeFlat value),
  }) {
    assert(raised != null);
    assert(flat != null);
    return flat(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result raised(_ButtonTypeRaised value),
    Result flat(_ButtonTypeFlat value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flat != null) {
      return flat(this);
    }
    return orElse();
  }
}

abstract class _ButtonTypeFlat implements ButtonType {
  const factory _ButtonTypeFlat() = _$_ButtonTypeFlat;
}
