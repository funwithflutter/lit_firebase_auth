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
    AppleAuthProvider apple,
  }) = _AuthProviders;
}

abstract class AuthProvider {}

class AppleAuthProvider extends AuthProvider {
  /// Parameters required for web-based authentication flows
  ///
  /// As described in https://developer.apple.com/documentation/sign_in_with_apple/sign_in_with_apple_js/incorporating_sign_in_with_apple_into_other_platforms
  final AppleWebAuthenticationOptions webAuthenticationOptions;

  AppleAuthProvider({
    this.webAuthenticationOptions,
  });
}

class AppleWebAuthenticationOptions {
  final String clientId;
  final Uri redirectUri;

  const AppleWebAuthenticationOptions({this.clientId, this.redirectUri});
}
