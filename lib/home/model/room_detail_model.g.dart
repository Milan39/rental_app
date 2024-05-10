// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomDetailModelImpl _$$RoomDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomDetailModelImpl(
      id: json['id'] as String,
      streetLocation: json['street_location'] as String,
      city: json['city'] as String,
      price: json['price'] as String,
      displayImage: json['display_image'] as String,
    );

Map<String, dynamic> _$$RoomDetailModelImplToJson(
        _$RoomDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street_location': instance.streetLocation,
      'city': instance.city,
      'price': instance.price,
      'display_image': instance.displayImage,
    };
