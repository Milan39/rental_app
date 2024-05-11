import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';
part 'auth_entity.g.dart';
@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String fullName,
    required String email,
    required String accessToken,
    required String? refreshToken,
    required String avatar,
    @JsonKey(name: "user_type") required String userType,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json)
  => _$UserEntityFromJson(json);
}


