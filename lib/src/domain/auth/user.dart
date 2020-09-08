import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class LitUser with _$LitUser {
  const factory LitUser({@required User user}) = _LitUser;
  const factory LitUser.empty() = _Empty;
  const factory LitUser.initializing() = _Initializing;
}
