import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';
part 'auth_entity.g.dart';
@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String fullName,
    required String accessToken,
    required String? refreshToken,
    required String avatar,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json)
  => _$UserEntityFromJson(json);
}

@freezed
class OrganizerEntity with _$OrganizerEntity {
  const factory OrganizerEntity({
    required String id,
    required String name
  }) = _OrganizerEntity;

  factory OrganizerEntity.fromJson(Map<String, Object?> json)
  => _$OrganizerEntityFromJson(json);
}

