import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_providers.freezed.dart';

@freezed
abstract class AuthProviders with _$AuthProviders {
  const factory AuthProviders({
    @Default(true) bool emailAndPassword,
    @Default(false) bool anonymous,
    @Default(false) bool google,
  }) = _AuthProviders;
}
