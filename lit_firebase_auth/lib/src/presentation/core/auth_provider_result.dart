import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_provider_result.freezed.dart';

@freezed
abstract class AuthProviderResult with _$AuthProviderResult {
  const factory AuthProviderResult.success({@required String token}) = _Success;
  const factory AuthProviderResult.failure() = _Failure;
  const factory AuthProviderResult.cancelled() = _Cancelled;
}
