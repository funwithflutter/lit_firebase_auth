import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth.dart';
import '../../../domain/auth/value_objects.dart';

part 'sign_in_handler_state.freezed.dart';

@freezed
abstract class SignInHandlerState with _$SignInHandlerState {
  const factory SignInHandlerState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Auth> authFailureOrSuccessOption,
  }) = _SignInHandlerState;

  factory SignInHandlerState.initial() => SignInHandlerState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
