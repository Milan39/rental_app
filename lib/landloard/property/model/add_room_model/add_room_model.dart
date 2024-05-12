import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_room_model.freezed.dart';

part 'add_room_model.g.dart';

@freezed
class AddRoomPayLoad with _$AddRoomPayLoad {
  const factory AddRoomPayLoad({
    @JsonKey(name: "street_location") required String streetLocation,
    required String city,
    required String price,
    @JsonKey(name: 'room_images') required List<RoomImage> roomImages,
    required String description,
  }) = _AddRoomPayLoad;

  @freezed
  factory AddRoomPayLoad.fromJson(Map<String, Object?> json) =>
      _$AddRoomPayLoadFromJson(json);
}

@freezed
class RoomImage with _$RoomImage {
  const factory RoomImage({required String image}) = _RoomImage;

  @freezed
  factory RoomImage.fromJson(Map<String, Object?> json) =>
      _$RoomImageFromJson(json);
}
