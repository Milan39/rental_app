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
    @JsonKey(name: 'is_first_login') required bool isFirstLogin,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

