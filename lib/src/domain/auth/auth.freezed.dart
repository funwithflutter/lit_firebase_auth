// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthTearOff {
  const _$AuthTearOff();

// ignore: unused_element
  _AuthSucc success() {
    return const _AuthSucc();
  }

// ignore: unused_element
  _AuthFail failure(AuthFailure failure) {
    return _AuthFail(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Auth = _$AuthTearOff();

/// @nodoc
mixin _$Auth {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(),
    @required TResult failure(AuthFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(),
    TResult failure(AuthFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(_AuthSucc value),
    @required TResult failure(_AuthFail value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(_AuthSucc value),
    TResult failure(_AuthFail value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCopyWithImpl<$Res> implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  final Auth _value;
  // ignore: unused_field
  final $Res Function(Auth) _then;
}

/// @nodoc
abstract class _$AuthSuccCopyWith<$Res> {
  factory _$AuthSuccCopyWith(_AuthSucc value, $Res Function(_AuthSucc) then) =
      __$AuthSuccCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthSuccCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements _$AuthSuccCopyWith<$Res> {
  __$AuthSuccCopyWithImpl(_AuthSucc _value, $Res Function(_AuthSucc) _then)
      : super(_value, (v) => _then(v as _AuthSucc));

  @override
  _AuthSucc get _value => super._value as _AuthSucc;
}

/// @nodoc
class _$_AuthSucc implements _AuthSucc {
  const _$_AuthSucc();

  @override
  String toString() {
    return 'Auth.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthSucc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(),
    @required TResult failure(AuthFailure failure),
  }) {
    assert(success != null);
    assert(failure != null);
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(),
    TResult failure(AuthFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(_AuthSucc value),
    @required TResult failure(_AuthFail value),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(_AuthSucc value),
    TResult failure(_AuthFail value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AuthSucc implements Auth {
  const factory _AuthSucc() = _$_AuthSucc;
}

/// @nodoc
abstract class _$AuthFailCopyWith<$Res> {
  factory _$AuthFailCopyWith(_AuthFail value, $Res Function(_AuthFail) then) =
      __$AuthFailCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$AuthFailCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements _$AuthFailCopyWith<$Res> {
  __$AuthFailCopyWithImpl(_AuthFail _value, $Res Function(_AuthFail) _then)
      : super(_value, (v) => _then(v as _AuthFail));

  @override
  _AuthFail get _value => super._value as _AuthFail;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_AuthFail(
      failure == freezed ? _value.failure : failure as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_AuthFail implements _AuthFail {
  const _$_AuthFail(this.failure) : assert(failure != null);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'Auth.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFail &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$AuthFailCopyWith<_AuthFail> get copyWith =>
      __$AuthFailCopyWithImpl<_AuthFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(),
    @required TResult failure(AuthFailure failure),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(),
    TResult failure(AuthFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(_AuthSucc value),
    @required TResult failure(_AuthFail value),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(_AuthSucc value),
    TResult failure(_AuthFail value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _AuthFail implements Auth {
  const factory _AuthFail(AuthFailure failure) = _$_AuthFail;

  AuthFailure get failure;
  @JsonKey(ignore: true)
  _$AuthFailCopyWith<_AuthFail> get copyWith;
}
