// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_provider_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthProviderResultTearOff {
  const _$AuthProviderResultTearOff();

  _Success success({@required String token}) {
    return _Success(
      token: token,
    );
  }

  _Failure failure() {
    return const _Failure();
  }

  _Cancelled cancelled() {
    return const _Cancelled();
  }
}

// ignore: unused_element
const $AuthProviderResult = _$AuthProviderResultTearOff();

mixin _$AuthProviderResult {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(String token),
    @required Result failure(),
    @required Result cancelled(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(String token),
    Result failure(),
    Result cancelled(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_Success value),
    @required Result failure(_Failure value),
    @required Result cancelled(_Cancelled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_Success value),
    Result failure(_Failure value),
    Result cancelled(_Cancelled value),
    @required Result orElse(),
  });
}

abstract class $AuthProviderResultCopyWith<$Res> {
  factory $AuthProviderResultCopyWith(
          AuthProviderResult value, $Res Function(AuthProviderResult) then) =
      _$AuthProviderResultCopyWithImpl<$Res>;
}

class _$AuthProviderResultCopyWithImpl<$Res>
    implements $AuthProviderResultCopyWith<$Res> {
  _$AuthProviderResultCopyWithImpl(this._value, this._then);

  final AuthProviderResult _value;
  // ignore: unused_field
  final $Res Function(AuthProviderResult) _then;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({String token});
}

class __$SuccessCopyWithImpl<$Res>
    extends _$AuthProviderResultCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object token = freezed,
  }) {
    return _then(_Success(
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

class _$_Success implements _Success {
  const _$_Success({@required this.token}) : assert(token != null);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthProviderResult.success(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(String token),
    @required Result failure(),
    @required Result cancelled(),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(cancelled != null);
    return success(token);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(String token),
    Result failure(),
    Result cancelled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_Success value),
    @required Result failure(_Failure value),
    @required Result cancelled(_Cancelled value),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(cancelled != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_Success value),
    Result failure(_Failure value),
    Result cancelled(_Cancelled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthProviderResult {
  const factory _Success({@required String token}) = _$_Success;

  String get token;
  _$SuccessCopyWith<_Success> get copyWith;
}

abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

class __$FailureCopyWithImpl<$Res>
    extends _$AuthProviderResultCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'AuthProviderResult.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(String token),
    @required Result failure(),
    @required Result cancelled(),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(cancelled != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(String token),
    Result failure(),
    Result cancelled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_Success value),
    @required Result failure(_Failure value),
    @required Result cancelled(_Cancelled value),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(cancelled != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_Success value),
    Result failure(_Failure value),
    Result cancelled(_Cancelled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthProviderResult {
  const factory _Failure() = _$_Failure;
}

abstract class _$CancelledCopyWith<$Res> {
  factory _$CancelledCopyWith(
          _Cancelled value, $Res Function(_Cancelled) then) =
      __$CancelledCopyWithImpl<$Res>;
}

class __$CancelledCopyWithImpl<$Res>
    extends _$AuthProviderResultCopyWithImpl<$Res>
    implements _$CancelledCopyWith<$Res> {
  __$CancelledCopyWithImpl(_Cancelled _value, $Res Function(_Cancelled) _then)
      : super(_value, (v) => _then(v as _Cancelled));

  @override
  _Cancelled get _value => super._value as _Cancelled;
}

class _$_Cancelled implements _Cancelled {
  const _$_Cancelled();

  @override
  String toString() {
    return 'AuthProviderResult.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Cancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(String token),
    @required Result failure(),
    @required Result cancelled(),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(cancelled != null);
    return cancelled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(String token),
    Result failure(),
    Result cancelled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_Success value),
    @required Result failure(_Failure value),
    @required Result cancelled(_Cancelled value),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(cancelled != null);
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_Success value),
    Result failure(_Failure value),
    Result cancelled(_Cancelled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _Cancelled implements AuthProviderResult {
  const factory _Cancelled() = _$_Cancelled;
}
