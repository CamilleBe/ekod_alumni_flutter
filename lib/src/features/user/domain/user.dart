import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

typedef UserID = String;

@freezed
class User with _$User {
  const factory User({
    required UserID id,
    required String firstName,
    required String lastName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
