// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User call({@required FirebaseUser user}) {
    return _User(
      user: user,
    );
  }

  _Empty empty() {
    return const _Empty();
  }

  _Initializing initializing() {
    return const _Initializing();
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(FirebaseUser user), {
    @required Result empty(),
    @required Result initializing(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(FirebaseUser user), {
    Result empty(),
    Result initializing(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_User value), {
    @required Result empty(_Empty value),
    @required Result initializing(_Initializing value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_User value), {
    Result empty(_Empty value),
    Result initializing(_Initializing value),
    @required Result orElse(),
  });
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;
}

abstract class _$UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  $Res call({FirebaseUser user});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_User(
      user: user == freezed ? _value.user : user as FirebaseUser,
    ));
  }
}

class _$_User implements _User {
  const _$_User({@required this.user}) : assert(user != null);

  @override
  final FirebaseUser user;

  @override
  String toString() {
    return 'User(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(FirebaseUser user), {
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
    Result $default(FirebaseUser user), {
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
    Result $default(_User value), {
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
    Result $default(_User value), {
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

abstract class _User implements User {
  const factory _User({@required FirebaseUser user}) = _$_User;

  FirebaseUser get user;
  _$UserCopyWith<_User> get copyWith;
}

abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

class __$EmptyCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
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
    return 'User.empty()';
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
    Result $default(FirebaseUser user), {
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
    Result $default(FirebaseUser user), {
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
    Result $default(_User value), {
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
    Result $default(_User value), {
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

abstract class _Empty implements User {
  const factory _Empty() = _$_Empty;
}

abstract class _$InitializingCopyWith<$Res> {
  factory _$InitializingCopyWith(
          _Initializing value, $Res Function(_Initializing) then) =
      __$InitializingCopyWithImpl<$Res>;
}

class __$InitializingCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
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
    return 'User.initializing()';
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
    Result $default(FirebaseUser user), {
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
    Result $default(FirebaseUser user), {
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
    Result $default(_User value), {
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
    Result $default(_User value), {
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

abstract class _Initializing implements User {
  const factory _Initializing() = _$_Initializing;
}
