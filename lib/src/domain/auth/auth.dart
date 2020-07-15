import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_failure.dart';

part 'auth.freezed.dart';

@freezed
abstract class Auth with _$Auth {
  const factory Auth.success() = _AuthSucc;
  const factory Auth.failure(AuthFailure failure) = _AuthFail;
}
