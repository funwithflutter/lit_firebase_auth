// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_handler_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInHandlerStateTearOff {
  const _$SignInHandlerStateTearOff();

// ignore: unused_element
  _SignInHandlerState call(
      {@required EmailAddress emailAddress,
      @required CellphoneNumber cellphoneNumber,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Auth> authFailureOrSuccessOption}) {
    return _SignInHandlerState(
      emailAddress: emailAddress,
      cellphoneNumber: cellphoneNumber,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInHandlerState = _$SignInHandlerStateTearOff();

/// @nodoc
mixin _$SignInHandlerState {
  EmailAddress get emailAddress;
  CellphoneNumber get cellphoneNumber;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Auth> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SignInHandlerStateCopyWith<SignInHandlerState> get copyWith;
}

/// @nodoc
abstract class $SignInHandlerStateCopyWith<$Res> {
  factory $SignInHandlerStateCopyWith(
          SignInHandlerState value, $Res Function(SignInHandlerState) then) =
      _$SignInHandlerStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      CellphoneNumber cellphoneNumber,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Auth> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInHandlerStateCopyWithImpl<$Res>
    implements $SignInHandlerStateCopyWith<$Res> {
  _$SignInHandlerStateCopyWithImpl(this._value, this._then);

  final SignInHandlerState _value;
  // ignore: unused_field
  final $Res Function(SignInHandlerState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object cellphoneNumber = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      cellphoneNumber: cellphoneNumber == freezed
          ? _value.cellphoneNumber
          : cellphoneNumber as CellphoneNumber,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Auth>,
    ));
  }
}

/// @nodoc
abstract class _$SignInHandlerStateCopyWith<$Res>
    implements $SignInHandlerStateCopyWith<$Res> {
  factory _$SignInHandlerStateCopyWith(
          _SignInHandlerState value, $Res Function(_SignInHandlerState) then) =
      __$SignInHandlerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      CellphoneNumber cellphoneNumber,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Auth> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInHandlerStateCopyWithImpl<$Res>
    extends _$SignInHandlerStateCopyWithImpl<$Res>
    implements _$SignInHandlerStateCopyWith<$Res> {
  __$SignInHandlerStateCopyWithImpl(
      _SignInHandlerState _value, $Res Function(_SignInHandlerState) _then)
      : super(_value, (v) => _then(v as _SignInHandlerState));

  @override
  _SignInHandlerState get _value => super._value as _SignInHandlerState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object cellphoneNumber = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInHandlerState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      cellphoneNumber: cellphoneNumber == freezed
          ? _value.cellphoneNumber
          : cellphoneNumber as CellphoneNumber,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Auth>,
    ));
  }
}

/// @nodoc
class _$_SignInHandlerState implements _SignInHandlerState {
  const _$_SignInHandlerState(
      {@required this.emailAddress,
      @required this.cellphoneNumber,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(cellphoneNumber != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final CellphoneNumber cellphoneNumber;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Auth> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInHandlerState(emailAddress: $emailAddress, cellphoneNumber: $cellphoneNumber, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInHandlerState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.cellphoneNumber, cellphoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cellphoneNumber, cellphoneNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(cellphoneNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInHandlerStateCopyWith<_SignInHandlerState> get copyWith =>
      __$SignInHandlerStateCopyWithImpl<_SignInHandlerState>(this, _$identity);
}

abstract class _SignInHandlerState implements SignInHandlerState {
  const factory _SignInHandlerState(
          {@required EmailAddress emailAddress,
          @required CellphoneNumber cellphoneNumber,
          @required Password password,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Auth> authFailureOrSuccessOption}) =
      _$_SignInHandlerState;

  @override
  EmailAddress get emailAddress;
  @override
  CellphoneNumber get cellphoneNumber;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Auth> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignInHandlerStateCopyWith<_SignInHandlerState> get copyWith;
}
