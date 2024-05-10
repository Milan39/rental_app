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
      roomImage: (json['room_image'] as List<dynamic>)
          .map((e) => RoomImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
      isPublished: json['is_published'] as bool,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$RoomDetailModelImplToJson(
        _$RoomDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street_location': instance.streetLocation,
      'city': instance.city,
      'price': instance.price,
      'display_image': instance.displayImage,
      'room_image': instance.roomImage,
      'description': instance.description,
      'is_published': instance.isPublished,
      'is_active': instance.isActive,
    };

_$RoomImageImpl _$$RoomImageImplFromJson(Map<String, dynamic> json) =>
    _$RoomImageImpl(
      image: json['image'] as String,
    );

Map<String, dynamic> _$$RoomImageImplToJson(_$RoomImageImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
    };
