import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({@required FirebaseUser user}) = _User;
  const factory User.empty() = _Empty;
  const factory User.initializing() = _Initializing;
}
