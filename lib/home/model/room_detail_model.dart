import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_detail_model.freezed.dart';

part 'room_detail_model.g.dart';

@freezed
class RoomDetailModel with _$RoomDetailModel {
  const factory RoomDetailModel({
    required String id,
    @JsonKey(name: 'street_location') required String streetLocation,
    required String city,
    required String price,
    @JsonKey(name: 'display_image') required String displayImage,
  }) = _RoomDetailModel;

  @freezed
  factory RoomDetailModel.fromJson(Map<String, Object?> json) =>
      _$RoomDetailModelFromJson(json);
}
