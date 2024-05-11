// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeRoomModelImpl _$$HomeRoomModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeRoomModelImpl(
      id: json['id'] as String,
      streetLocation: json['street_location'] as String,
      city: json['city'] as String,
      price: json['price'] as String,
      displayImage: json['display_image'] as String,
    );

Map<String, dynamic> _$$HomeRoomModelImplToJson(_$HomeRoomModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street_location': instance.streetLocation,
      'city': instance.city,
      'price': instance.price,
      'display_image': instance.displayImage,
    };
