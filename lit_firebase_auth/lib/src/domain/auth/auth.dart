import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_failure.dart';

part 'auth.freezed.dart';

@freezed

/// Union class for whether authentication was successful or whether it failed
abstract class Auth with _$Auth {
  const factory Auth.success() = _AuthSucc;
  const factory Auth.failure(AuthFailure failure) = _AuthFail;
}
