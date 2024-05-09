// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginPayloadModelImpl _$$LoginPayloadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginPayloadModelImpl(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginPayloadModelImplToJson(
        _$LoginPayloadModelImpl instance) =>
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
      organizers: (json['organizers'] as List<dynamic>)
          .map((e) => OrganizerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
      'user': instance.user,
      'organizers': instance.organizers,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      fullName: json['fullname'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullName,
      'avatar': instance.avatar,
    };

_$OrganizerModelImpl _$$OrganizerModelImplFromJson(Map<String, dynamic> json) =>
    _$OrganizerModelImpl(
      id: json['id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      position: json['position'] as String,
    );

Map<String, dynamic> _$$OrganizerModelImplToJson(
        _$OrganizerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'position': instance.position,
    };
