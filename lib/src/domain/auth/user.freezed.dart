// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LitUserTearOff {
  const _$LitUserTearOff();

// ignore: unused_element
  _LitUser call({@required User user}) {
    return _LitUser(
      user: user,
    );
  }

// ignore: unused_element
  _Empty empty() {
    return const _Empty();
  }

// ignore: unused_element
  _Initializing initializing() {
    return const _Initializing();
  }
}

// ignore: unused_element
const $LitUser = _$LitUserTearOff();

mixin _$LitUser {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(User user), {
    @required Result empty(),
    @required Result initializing(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(User user), {
    Result empty(),
    Result initializing(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LitUser value), {
    @required Result empty(_Empty value),
    @required Result initializing(_Initializing value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LitUser value), {
    Result empty(_Empty value),
    Result initializing(_Initializing value),
    @required Result orElse(),
  });
}

abstract class $LitUserCopyWith<$Res> {
  factory $LitUserCopyWith(LitUser value, $Res Function(LitUser) then) =
      _$LitUserCopyWithImpl<$Res>;
}

class _$LitUserCopyWithImpl<$Res> implements $LitUserCopyWith<$Res> {
  _$LitUserCopyWithImpl(this._value, this._then);

  final LitUser _value;
  // ignore: unused_field
  final $Res Function(LitUser) _then;
}

abstract class _$LitUserCopyWith<$Res> {
  factory _$LitUserCopyWith(_LitUser value, $Res Function(_LitUser) then) =
      __$LitUserCopyWithImpl<$Res>;
  $Res call({User user});
}

class __$LitUserCopyWithImpl<$Res> extends _$LitUserCopyWithImpl<$Res>
    implements _$LitUserCopyWith<$Res> {
  __$LitUserCopyWithImpl(_LitUser _value, $Res Function(_LitUser) _then)
      : super(_value, (v) => _then(v as _LitUser));

  @override
  _LitUser get _value => super._value as _LitUser;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_LitUser(
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

class _$_LitUser implements _LitUser {
  const _$_LitUser({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'LitUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LitUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$LitUserCopyWith<_LitUser> get copyWith =>
      __$LitUserCopyWithImpl<_LitUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(User user), {
    @required Result empty(),
    @required Result initializing(),
  }) {
    assert($default != null);
    assert(empty != null);
    assert(initializing != null);
    return $default(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(User user), {
    Result empty(),
    Result initializing(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LitUser value), {
    @required Result empty(_Empty value),
    @required Result initializing(_Initializing value),
  }) {
    assert($default != null);
    assert(empty != null);
    assert(initializing != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LitUser value), {
    Result empty(_Empty value),
    Result initializing(_Initializing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LitUser implements LitUser {
  const factory _LitUser({@required User user}) = _$_LitUser;

  User get user;
  _$LitUserCopyWith<_LitUser> get copyWith;
}

abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

class __$EmptyCopyWithImpl<$Res> extends _$LitUserCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'LitUser.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(User user), {
    @required Result empty(),
    @required Result initializing(),
  }) {
    assert($default != null);
    assert(empty != null);
    assert(initializing != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(User user), {
    Result empty(),
    Result initializing(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LitUser value), {
    @required Result empty(_Empty value),
    @required Result initializing(_Initializing value),
  }) {
    assert($default != null);
    assert(empty != null);
    assert(initializing != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LitUser value), {
    Result empty(_Empty value),
    Result initializing(_Initializing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements LitUser {
  const factory _Empty() = _$_Empty;
}

abstract class _$InitializingCopyWith<$Res> {
  factory _$InitializingCopyWith(
          _Initializing value, $Res Function(_Initializing) then) =
      __$InitializingCopyWithImpl<$Res>;
}

class __$InitializingCopyWithImpl<$Res> extends _$LitUserCopyWithImpl<$Res>
    implements _$InitializingCopyWith<$Res> {
  __$InitializingCopyWithImpl(
      _Initializing _value, $Res Function(_Initializing) _then)
      : super(_value, (v) => _then(v as _Initializing));

  @override
  _Initializing get _value => super._value as _Initializing;
}

class _$_Initializing implements _Initializing {
  const _$_Initializing();

  @override
  String toString() {
    return 'LitUser.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(User user), {
    @required Result empty(),
    @required Result initializing(),
  }) {
    assert($default != null);
    assert(empty != null);
    assert(initializing != null);
    return initializing();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(User user), {
    Result empty(),
    Result initializing(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LitUser value), {
    @required Result empty(_Empty value),
    @required Result initializing(_Initializing value),
  }) {
    assert($default != null);
    assert(empty != null);
    assert(initializing != null);
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LitUser value), {
    Result empty(_Empty value),
    Result initializing(_Initializing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class _Initializing implements LitUser {
  const factory _Initializing() = _$_Initializing;
}
