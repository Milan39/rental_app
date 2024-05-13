import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginPayLoadModel with _$LoginPayLoadModel {
  const factory LoginPayLoadModel({
    required String username,
    required String password,
  }) = _LoginPayLoadModel;

  factory LoginPayLoadModel.fromJson(Map<String, Object?> json)=>
      _$LoginPayLoadModelFromJson(json);
}

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required String access,
    required String refresh,
    required UserModel user,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, Object?> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    @JsonKey(name: 'fullname') required String fullName,
    required String email,
    required String avatar,
    @JsonKey(name: 'user_type') required String userType,
    @JsonKey(name: 'is_first_login') required bool isFirstLogin,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

@freezed
class RegisterPayload with _$RegisterPayload {
  const factory RegisterPayload({
    @JsonKey(name: "phone_number") required String phoneNumber,
    required String email,
    @JsonKey(name: "fullname") required String fullName,
    required String password,
  }) = _RegisterPayload;

  @freezed
  factory RegisterPayload.fromJson(Map<String, Object?> json) =>
      _$RegisterPayloadFromJson(json);
}

@freezed
class RegisterResponse with _$RegisterResponse{
  const factory RegisterResponse({
    @JsonKey(name: "phone_number") required String phoneNumber,
    required String email,
    @JsonKey(name: "fullname") required String fullName,
  }) = _RegisterResponse;

  @freezed
  factory RegisterResponse.fromJson(Map<String, Object?> json) =>
      _$RegisterResponseFromJson(json);
}
