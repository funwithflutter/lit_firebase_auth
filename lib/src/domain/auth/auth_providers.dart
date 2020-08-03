import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_providers.freezed.dart';

@freezed

/// State which authentication providers should be enabled.
///
/// [emailAndPassword] defaults to enabled. The rest are disabled by default.
///
/// You will receive an [AuthProviderNotEnabled] exception if you try to use
/// an authentication provider that is not enabled here.
abstract class AuthProviders with _$AuthProviders {
  const factory AuthProviders({
    @Default(true) bool emailAndPassword,
    @Default(false) bool anonymous,
    @Default(false) bool google,
    @Default(false) bool github,
  }) = _AuthProviders;
}
