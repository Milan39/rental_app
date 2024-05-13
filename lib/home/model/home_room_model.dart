import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_room_model.freezed.dart';

part 'home_room_model.g.dart';

@freezed
class HomeRoomModel with _$HomeRoomModel {
  const factory HomeRoomModel({
    required String id,
    @JsonKey(name: 'street_location') required String streetLocation,
    @JsonKey(name: 'is_active')  bool? isActive,
    @JsonKey(name: 'is_published')  bool? isPublished,
    required String city,
    required String price,
    @JsonKey(name: 'display_image') required String displayImage,
  }) = _HomeRoomModel;

  @freezed
  factory HomeRoomModel.fromJson(Map<String, Object?> json) =>
      _$HomeRoomModelFromJson(json);
}
