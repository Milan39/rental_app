import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_detail_model.freezed.dart';
part 'room_detail_model.g.dart';

@freezed
class RoomDetailModel with _$RoomDetailModel {
  const factory RoomDetailModel({
    required String id,
    @JsonKey(name: "street_location") required String streetLocation,
    required String city,
    required String price,
    @JsonKey(name: "display_image") required String displayImage,
    @JsonKey(name: 'room_image') required List<RoomImage> roomImage,
    required String description,
    @JsonKey(name: "is_published") required bool isPublished,
    @JsonKey(name: "is_active") required bool isActive,
    @JsonKey(name: "landlord_user") required LandLordUser landLordUser,
  }) = _RoomDetailModel;

  @freezed
  factory RoomDetailModel.fromJson(Map<String, Object?> json) =>
      _$RoomDetailModelFromJson(json);
}

@freezed
class RoomImage with _$RoomImage {
  const factory RoomImage({required String image}) = _RoomImage;

  @freezed
  factory RoomImage.fromJson(Map<String, Object?> json) =>
      _$RoomImageFromJson(json);
}

@freezed
class LandLordUser with _$LandLordUser {
  const factory LandLordUser({
    required String id,
    @JsonKey(name: 'fullname') required String fullName,
    @JsonKey(name: 'phone_number') required String phoneNumber,
  }) = _LandLordUser;

  @freezed
  factory LandLordUser.fromJson(Map<String, Object?> json) =>
      _$LandLordUserFromJson(json);
}

@freezed
class BookingResponse with _$BookingResponse {
  const factory BookingResponse({
    required String id,
    required String room,
    @JsonKey(name: "total_amount") required String totalAmount,
    @JsonKey(name: "normal_user") required String normalUser,
  }) = _BookingResponse;

  @freezed
  factory BookingResponse.fromJson(Map<String, Object?> json) =>
      _$BookingResponseFromJson(json);
}

@freezed
class PaymentCheckoutResponse with _$PaymentCheckoutResponse {
  const factory PaymentCheckoutResponse({
    required String token,
    required String amount,
  }) = _PaymentCheckoutResponse;

  @freezed
  factory PaymentCheckoutResponse.fromJson(Map<String, Object?> json) =>
      _$PaymentCheckoutResponseFromJson(json);
}
