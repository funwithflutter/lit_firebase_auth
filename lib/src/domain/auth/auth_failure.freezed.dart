// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

// ignore: unused_element
  InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const InvalidEmailAndPasswordCombination();
  }

// ignore: unused_element
  EmailMalformed malformed() {
    return const EmailMalformed();
  }

// ignore: unused_element
  UserDisabled userDisabled() {
    return const UserDisabled();
  }

// ignore: unused_element
  TooManyRequests tooManyRequests() {
    return const TooManyRequests();
  }

// ignore: unused_element
  LinkMergeConflict linkMergeConflict(AuthCredential credentialForLinking) {
    return LinkMergeConflict(
      credentialForLinking,
    );
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result malformed(),
    @required Result userDisabled(),
    @required Result tooManyRequests(),
    @required Result linkMergeConflict(AuthCredential credentialForLinking),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result malformed(),
    Result userDisabled(),
    Result tooManyRequests(),
    Result linkMergeConflict(AuthCredential credentialForLinking),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result malformed(EmailMalformed value),
    @required Result userDisabled(UserDisabled value),
    @required Result tooManyRequests(TooManyRequests value),
    @required Result linkMergeConflict(LinkMergeConflict value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result malformed(EmailMalformed value),
    Result userDisabled(UserDisabled value),
    Result tooManyRequests(TooManyRequests value),
    Result linkMergeConflict(LinkMergeConflict value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result malformed(),
    @required Result userDisabled(),
    @required Result tooManyRequests(),
    @required Result linkMergeConflict(AuthCredential credentialForLinking),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result malformed(),
    Result userDisabled(),
    Result tooManyRequests(),
    Result linkMergeConflict(AuthCredential credentialForLinking),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result malformed(EmailMalformed value),
    @required Result userDisabled(UserDisabled value),
    @required Result tooManyRequests(TooManyRequests value),
    @required Result linkMergeConflict(LinkMergeConflict value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result malformed(EmailMalformed value),
    Result userDisabled(UserDisabled value),
    Result tooManyRequests(TooManyRequests value),
    Result linkMergeConflict(LinkMergeConflict value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result malformed(),
    @required Result userDisabled(),
    @required Result tooManyRequests(),
    @required Result linkMergeConflict(AuthCredential credentialForLinking),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result malformed(),
    Result userDisabled(),
    Result tooManyRequests(),
    Result linkMergeConflict(AuthCredential credentialForLinking),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result malformed(EmailMalformed value),
    @required Result userDisabled(UserDisabled value),
    @required Result tooManyRequests(TooManyRequests value),
    @required Result linkMergeConflict(LinkMergeConflict value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result malformed(EmailMalformed value),
    Result userDisabled(UserDisabled value),
    Result tooManyRequests(TooManyRequests value),
    Result linkMergeConflict(LinkMergeConflict value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result malformed(),
    @required Result userDisabled(),
    @required Result tooManyRequests(),
    @required Result linkMergeConflict(AuthCredential credentialForLinking),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result malformed(),
    Result userDisabled(),
    Result tooManyRequests(),
    Result linkMergeConflict(AuthCredential credentialForLinking),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result malformed(EmailMalformed value),
    @required Result userDisabled(UserDisabled value),
    @required Result tooManyRequests(TooManyRequests value),
    @required Result linkMergeConflict(LinkMergeConflict value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result malformed(EmailMalformed value),
    Result userDisabled(UserDisabled value),
    Result tooManyRequests(TooManyRequests value),
    Result linkMergeConflict(LinkMergeConflict value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result malformed(),
    @required Result userDisabled(),
    @required Result tooManyRequests(),
    @required Result linkMergeConflict(AuthCredential credentialForLinking),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result malformed(),
    Result userDisabled(),
    Result tooManyRequests(),
    Result linkMergeConflict(AuthCredential credentialForLinking),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result malformed(EmailMalformed value),
    @required Result userDisabled(UserDisabled value),
    @required Result tooManyRequests(TooManyRequests value),
    @required Result linkMergeConflict(LinkMergeConflict value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result malformed(EmailMalformed value),
    Result userDisabled(UserDisabled value),
    Result tooManyRequests(TooManyRequests value),
    Result linkMergeConflict(LinkMergeConflict value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}

abstract class $EmailMalformedCopyWith<$Res> {
  factory $EmailMalformedCopyWith(
          EmailMalformed value, $Res Function(EmailMalformed) then) =
      _$EmailMalformedCopyWithImpl<$Res>;
}

class _$EmailMalformedCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailMalformedCopyWith<$Res> {
  _$EmailMalformedCopyWithImpl(
      EmailMalformed _value, $Res Function(EmailMalformed) _then)
      : super(_value, (v) => _then(v as EmailMalformed));

  @override
  EmailMalformed get _value => super._value as EmailMalformed;
}

class _$EmailMalformed implements EmailMalformed {
  const _$EmailMalformed();

  @override
  String toString() {
    return 'AuthFailure.malformed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailMalformed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result malformed(),
    @required Result userDisabled(),
    @required Result tooManyRequests(),
    @required Result linkMergeConflict(AuthCredential credentialForLinking),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return malformed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result malformed(),
    Result userDisabled(),
    Result tooManyRequests(),
    Result linkMergeConflict(AuthCredential credentialForLinking),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (malformed != null) {
      return malformed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result malformed(EmailMalformed value),
    @required Result userDisabled(UserDisabled value),
    @required Result tooManyRequests(TooManyRequests value),
    @required Result linkMergeConflict(LinkMergeConflict value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return malformed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result malformed(EmailMalformed value),
    Result userDisabled(UserDisabled value),
    Result tooManyRequests(TooManyRequests value),
    Result linkMergeConflict(LinkMergeConflict value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (malformed != null) {
      return malformed(this);
    }
    return orElse();
  }
}

abstract class EmailMalformed implements AuthFailure {
  const factory EmailMalformed() = _$EmailMalformed;
}

abstract class $UserDisabledCopyWith<$Res> {
  factory $UserDisabledCopyWith(
          UserDisabled value, $Res Function(UserDisabled) then) =
      _$UserDisabledCopyWithImpl<$Res>;
}

class _$UserDisabledCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserDisabledCopyWith<$Res> {
  _$UserDisabledCopyWithImpl(
      UserDisabled _value, $Res Function(UserDisabled) _then)
      : super(_value, (v) => _then(v as UserDisabled));

  @override
  UserDisabled get _value => super._value as UserDisabled;
}

class _$UserDisabled implements UserDisabled {
  const _$UserDisabled();

  @override
  String toString() {
    return 'AuthFailure.userDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result malformed(),
    @required Result userDisabled(),
    @required Result tooManyRequests(),
    @required Result linkMergeConflict(AuthCredential credentialForLinking),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return userDisabled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result malformed(),
    Result userDisabled(),
    Result tooManyRequests(),
    Result linkMergeConflict(AuthCredential credentialForLinking),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userDisabled != null) {
      return userDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result malformed(EmailMalformed value),
    @required Result userDisabled(UserDisabled value),
    @required Result tooManyRequests(TooManyRequests value),
    @required Result linkMergeConflict(LinkMergeConflict value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result malformed(EmailMalformed value),
    Result userDisabled(UserDisabled value),
    Result tooManyRequests(TooManyRequests value),
    Result linkMergeConflict(LinkMergeConflict value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class UserDisabled implements AuthFailure {
  const factory UserDisabled() = _$UserDisabled;
}

abstract class $TooManyRequestsCopyWith<$Res> {
  factory $TooManyRequestsCopyWith(
          TooManyRequests value, $Res Function(TooManyRequests) then) =
      _$TooManyRequestsCopyWithImpl<$Res>;
}

class _$TooManyRequestsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $TooManyRequestsCopyWith<$Res> {
  _$TooManyRequestsCopyWithImpl(
      TooManyRequests _value, $Res Function(TooManyRequests) _then)
      : super(_value, (v) => _then(v as TooManyRequests));

  @override
  TooManyRequests get _value => super._value as TooManyRequests;
}

class _$TooManyRequests implements TooManyRequests {
  const _$TooManyRequests();

  @override
  String toString() {
    return 'AuthFailure.tooManyRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TooManyRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result malformed(),
    @required Result userDisabled(),
    @required Result tooManyRequests(),
    @required Result linkMergeConflict(AuthCredential credentialForLinking),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result malformed(),
    Result userDisabled(),
    Result tooManyRequests(),
    Result linkMergeConflict(AuthCredential credentialForLinking),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result malformed(EmailMalformed value),
    @required Result userDisabled(UserDisabled value),
    @required Result tooManyRequests(TooManyRequests value),
    @required Result linkMergeConflict(LinkMergeConflict value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result malformed(EmailMalformed value),
    Result userDisabled(UserDisabled value),
    Result tooManyRequests(TooManyRequests value),
    Result linkMergeConflict(LinkMergeConflict value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class TooManyRequests implements AuthFailure {
  const factory TooManyRequests() = _$TooManyRequests;
}

abstract class $LinkMergeConflictCopyWith<$Res> {
  factory $LinkMergeConflictCopyWith(
          LinkMergeConflict value, $Res Function(LinkMergeConflict) then) =
      _$LinkMergeConflictCopyWithImpl<$Res>;
  $Res call({AuthCredential credentialForLinking});
}

class _$LinkMergeConflictCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $LinkMergeConflictCopyWith<$Res> {
  _$LinkMergeConflictCopyWithImpl(
      LinkMergeConflict _value, $Res Function(LinkMergeConflict) _then)
      : super(_value, (v) => _then(v as LinkMergeConflict));

  @override
  LinkMergeConflict get _value => super._value as LinkMergeConflict;

  @override
  $Res call({
    Object credentialForLinking = freezed,
  }) {
    return _then(LinkMergeConflict(
      credentialForLinking == freezed
          ? _value.credentialForLinking
          : credentialForLinking as AuthCredential,
    ));
  }
}

class _$LinkMergeConflict implements LinkMergeConflict {
  const _$LinkMergeConflict(this.credentialForLinking)
      : assert(credentialForLinking != null);

  @override
  final AuthCredential credentialForLinking;

  @override
  String toString() {
    return 'AuthFailure.linkMergeConflict(credentialForLinking: $credentialForLinking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LinkMergeConflict &&
            (identical(other.credentialForLinking, credentialForLinking) ||
                const DeepCollectionEquality()
                    .equals(other.credentialForLinking, credentialForLinking)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(credentialForLinking);

  @override
  $LinkMergeConflictCopyWith<LinkMergeConflict> get copyWith =>
      _$LinkMergeConflictCopyWithImpl<LinkMergeConflict>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result malformed(),
    @required Result userDisabled(),
    @required Result tooManyRequests(),
    @required Result linkMergeConflict(AuthCredential credentialForLinking),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return linkMergeConflict(credentialForLinking);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result malformed(),
    Result userDisabled(),
    Result tooManyRequests(),
    Result linkMergeConflict(AuthCredential credentialForLinking),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (linkMergeConflict != null) {
      return linkMergeConflict(credentialForLinking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result malformed(EmailMalformed value),
    @required Result userDisabled(UserDisabled value),
    @required Result tooManyRequests(TooManyRequests value),
    @required Result linkMergeConflict(LinkMergeConflict value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(malformed != null);
    assert(userDisabled != null);
    assert(tooManyRequests != null);
    assert(linkMergeConflict != null);
    return linkMergeConflict(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result malformed(EmailMalformed value),
    Result userDisabled(UserDisabled value),
    Result tooManyRequests(TooManyRequests value),
    Result linkMergeConflict(LinkMergeConflict value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (linkMergeConflict != null) {
      return linkMergeConflict(this);
    }
    return orElse();
  }
}

abstract class LinkMergeConflict implements AuthFailure {
  const factory LinkMergeConflict(AuthCredential credentialForLinking) =
      _$LinkMergeConflict;

  AuthCredential get credentialForLinking;
  $LinkMergeConflictCopyWith<LinkMergeConflict> get copyWith;
}
