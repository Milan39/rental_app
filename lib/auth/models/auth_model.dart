import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';

part 'auth_model.g.dart';

@freezed
class LoginPayloadModel with _$LoginPayloadModel {
  const factory LoginPayloadModel({
    required String username,
    required String password,
  }) = _LoginPayloadModel;

  factory LoginPayloadModel.fromJson(Map<String, Object?> json) =>
      _$LoginPayloadModelFromJson(json);
}

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required String access,
    required String refresh,
    required UserModel user,
    required List<OrganizerModel> organizers,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, Object?> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    @JsonKey(name: 'fullname') required String fullName,
    required String avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

@freezed
class OrganizerModel with _$OrganizerModel {
  factory OrganizerModel({
    required String id,
    required String image,
    required String name,
    required String position,
  }) = _OrganizerModel;

  factory OrganizerModel.fromJson(Map<String, Object?> json) =>
      _$OrganizerModelFromJson(json);
}
