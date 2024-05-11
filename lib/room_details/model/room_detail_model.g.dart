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
      landLordUser:
          LandLordUser.fromJson(json['landlord_user'] as Map<String, dynamic>),
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
      'landlord_user': instance.landLordUser,
    };

_$RoomImageImpl _$$RoomImageImplFromJson(Map<String, dynamic> json) =>
    _$RoomImageImpl(
      image: json['image'] as String,
    );

Map<String, dynamic> _$$RoomImageImplToJson(_$RoomImageImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
    };

_$LandLordUserImpl _$$LandLordUserImplFromJson(Map<String, dynamic> json) =>
    _$LandLordUserImpl(
      id: json['id'] as String,
      fullName: json['fullname'] as String,
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$$LandLordUserImplToJson(_$LandLordUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullName,
      'phone_number': instance.phoneNumber,
    };

_$BookingResponseImpl _$$BookingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingResponseImpl(
      id: json['id'] as String,
      room: json['room'] as String,
      totalAmount: json['total_amount'] as String,
      normalUser: json['normal_user'] as String,
    );

Map<String, dynamic> _$$BookingResponseImplToJson(
        _$BookingResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'room': instance.room,
      'total_amount': instance.totalAmount,
      'normal_user': instance.normalUser,
    };

_$PaymentCheckoutResponseImpl _$$PaymentCheckoutResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentCheckoutResponseImpl(
      token: json['token'] as String,
      amount: json['amount'] as String,
    );

Map<String, dynamic> _$$PaymentCheckoutResponseImplToJson(
        _$PaymentCheckoutResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'amount': instance.amount,
    };
