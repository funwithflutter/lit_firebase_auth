// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthProvidersTearOff {
  const _$AuthProvidersTearOff();

  _AuthProviders call(
      {bool emailAndPassword = true,
      bool anonymous = false,
      bool google = false,
      AppleAuthProvider apple}) {
    return _AuthProviders(
      emailAndPassword: emailAndPassword,
      anonymous: anonymous,
      google: google,
      apple: apple,
    );
  }
}

// ignore: unused_element
const $AuthProviders = _$AuthProvidersTearOff();

mixin _$AuthProviders {
  bool get emailAndPassword;
  bool get anonymous;
  bool get google;
  AppleAuthProvider get apple;

  $AuthProvidersCopyWith<AuthProviders> get copyWith;
}

abstract class $AuthProvidersCopyWith<$Res> {
  factory $AuthProvidersCopyWith(
          AuthProviders value, $Res Function(AuthProviders) then) =
      _$AuthProvidersCopyWithImpl<$Res>;
  $Res call(
      {bool emailAndPassword,
      bool anonymous,
      bool google,
      AppleAuthProvider apple});
}

class _$AuthProvidersCopyWithImpl<$Res>
    implements $AuthProvidersCopyWith<$Res> {
  _$AuthProvidersCopyWithImpl(this._value, this._then);

  final AuthProviders _value;
  // ignore: unused_field
  final $Res Function(AuthProviders) _then;

  @override
  $Res call({
    Object emailAndPassword = freezed,
    Object anonymous = freezed,
    Object google = freezed,
    Object apple = freezed,
  }) {
    return _then(_value.copyWith(
      emailAndPassword: emailAndPassword == freezed
          ? _value.emailAndPassword
          : emailAndPassword as bool,
      anonymous: anonymous == freezed ? _value.anonymous : anonymous as bool,
      google: google == freezed ? _value.google : google as bool,
      apple: apple == freezed ? _value.apple : apple as AppleAuthProvider,
    ));
  }
}

abstract class _$AuthProvidersCopyWith<$Res>
    implements $AuthProvidersCopyWith<$Res> {
  factory _$AuthProvidersCopyWith(
          _AuthProviders value, $Res Function(_AuthProviders) then) =
      __$AuthProvidersCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool emailAndPassword,
      bool anonymous,
      bool google,
      AppleAuthProvider apple});
}

class __$AuthProvidersCopyWithImpl<$Res>
    extends _$AuthProvidersCopyWithImpl<$Res>
    implements _$AuthProvidersCopyWith<$Res> {
  __$AuthProvidersCopyWithImpl(
      _AuthProviders _value, $Res Function(_AuthProviders) _then)
      : super(_value, (v) => _then(v as _AuthProviders));

  @override
  _AuthProviders get _value => super._value as _AuthProviders;

  @override
  $Res call({
    Object emailAndPassword = freezed,
    Object anonymous = freezed,
    Object google = freezed,
    Object apple = freezed,
  }) {
    return _then(_AuthProviders(
      emailAndPassword: emailAndPassword == freezed
          ? _value.emailAndPassword
          : emailAndPassword as bool,
      anonymous: anonymous == freezed ? _value.anonymous : anonymous as bool,
      google: google == freezed ? _value.google : google as bool,
      apple: apple == freezed ? _value.apple : apple as AppleAuthProvider,
    ));
  }
}

class _$_AuthProviders implements _AuthProviders {
  const _$_AuthProviders(
      {this.emailAndPassword = true,
      this.anonymous = false,
      this.google = false,
      this.apple})
      : assert(emailAndPassword != null),
        assert(anonymous != null),
        assert(google != null);

  @JsonKey(defaultValue: true)
  @override
  final bool emailAndPassword;
  @JsonKey(defaultValue: false)
  @override
  final bool anonymous;
  @JsonKey(defaultValue: false)
  @override
  final bool google;
  @override
  final AppleAuthProvider apple;

  @override
  String toString() {
    return 'AuthProviders(emailAndPassword: $emailAndPassword, anonymous: $anonymous, google: $google, apple: $apple)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthProviders &&
            (identical(other.emailAndPassword, emailAndPassword) ||
                const DeepCollectionEquality()
                    .equals(other.emailAndPassword, emailAndPassword)) &&
            (identical(other.anonymous, anonymous) ||
                const DeepCollectionEquality()
                    .equals(other.anonymous, anonymous)) &&
            (identical(other.google, google) ||
                const DeepCollectionEquality().equals(other.google, google)) &&
            (identical(other.apple, apple) ||
                const DeepCollectionEquality().equals(other.apple, apple)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAndPassword) ^
      const DeepCollectionEquality().hash(anonymous) ^
      const DeepCollectionEquality().hash(google) ^
      const DeepCollectionEquality().hash(apple);

  @override
  _$AuthProvidersCopyWith<_AuthProviders> get copyWith =>
      __$AuthProvidersCopyWithImpl<_AuthProviders>(this, _$identity);
}

abstract class _AuthProviders implements AuthProviders {
  const factory _AuthProviders(
      {bool emailAndPassword,
      bool anonymous,
      bool google,
      AppleAuthProvider apple}) = _$_AuthProviders;

  @override
  bool get emailAndPassword;
  @override
  bool get anonymous;
  @override
  bool get google;
  @override
  AppleAuthProvider get apple;
  @override
  _$AuthProvidersCopyWith<_AuthProviders> get copyWith;
}