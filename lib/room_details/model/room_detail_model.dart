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
