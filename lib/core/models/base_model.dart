import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_model.freezed.dart';
part 'base_model.g.dart';

@freezed
class BasePaginationModel with _$BasePaginationModel {
  const factory BasePaginationModel({
    required String next,
    required String previous,
  }) = _BasePaginationModel;

  factory BasePaginationModel.fromJson(Map<String, Object?> json)
  => _$BasePaginationModelFromJson(json);
}