// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddRoomPayLoadImpl _$$AddRoomPayLoadImplFromJson(Map<String, dynamic> json) =>
    _$AddRoomPayLoadImpl(
      streetLocation: json['street_location'] as String,
      city: json['city'] as String,
      price: json['price'] as String,
      roomImages: (json['room_images'] as List<dynamic>)
          .map((e) => RoomImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$AddRoomPayLoadImplToJson(
        _$AddRoomPayLoadImpl instance) =>
    <String, dynamic>{
      'street_location': instance.streetLocation,
      'city': instance.city,
      'price': instance.price,
      'room_images': instance.roomImages,
      'description': instance.description,
    };

_$RoomImageImpl _$$RoomImageImplFromJson(Map<String, dynamic> json) =>
    _$RoomImageImpl(
      image: json['image'] as String,
    );

Map<String, dynamic> _$$RoomImageImplToJson(_$RoomImageImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
    };
