// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginPayLoadModelImpl _$$LoginPayLoadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginPayLoadModelImpl(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginPayLoadModelImplToJson(
        _$LoginPayLoadModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
      'user': instance.user,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      fullName: json['fullname'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
      isFirstLogin: json['is_first_login'] as bool,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullName,
      'email': instance.email,
      'avatar': instance.avatar,
      'is_first_login': instance.isFirstLogin,
    };