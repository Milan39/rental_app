// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomDetailModel _$RoomDetailModelFromJson(Map<String, dynamic> json) {
  return _RoomDetailModel.fromJson(json);
}

/// @nodoc
mixin _$RoomDetailModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_location')
  String get streetLocation => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_image')
  String get displayImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomDetailModelCopyWith<RoomDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDetailModelCopyWith<$Res> {
  factory $RoomDetailModelCopyWith(
          RoomDetailModel value, $Res Function(RoomDetailModel) then) =
      _$RoomDetailModelCopyWithImpl<$Res, RoomDetailModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'street_location') String streetLocation,
      String city,
      String price,
      @JsonKey(name: 'display_image') String displayImage});
}

/// @nodoc
class _$RoomDetailModelCopyWithImpl<$Res, $Val extends RoomDetailModel>
    implements $RoomDetailModelCopyWith<$Res> {
  _$RoomDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetLocation = null,
    Object? city = null,
    Object? price = null,
    Object? displayImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streetLocation: null == streetLocation
          ? _value.streetLocation
          : streetLocation // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      displayImage: null == displayImage
          ? _value.displayImage
          : displayImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomDetailModelImplCopyWith<$Res>
    implements $RoomDetailModelCopyWith<$Res> {
  factory _$$RoomDetailModelImplCopyWith(_$RoomDetailModelImpl value,
          $Res Function(_$RoomDetailModelImpl) then) =
      __$$RoomDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'street_location') String streetLocation,
      String city,
      String price,
      @JsonKey(name: 'display_image') String displayImage});
}

/// @nodoc
class __$$RoomDetailModelImplCopyWithImpl<$Res>
    extends _$RoomDetailModelCopyWithImpl<$Res, _$RoomDetailModelImpl>
    implements _$$RoomDetailModelImplCopyWith<$Res> {
  __$$RoomDetailModelImplCopyWithImpl(
      _$RoomDetailModelImpl _value, $Res Function(_$RoomDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetLocation = null,
    Object? city = null,
    Object? price = null,
    Object? displayImage = null,
  }) {
    return _then(_$RoomDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streetLocation: null == streetLocation
          ? _value.streetLocation
          : streetLocation // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      displayImage: null == displayImage
          ? _value.displayImage
          : displayImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomDetailModelImpl implements _RoomDetailModel {
  const _$RoomDetailModelImpl(
      {required this.id,
      @JsonKey(name: 'street_location') required this.streetLocation,
      required this.city,
      required this.price,
      @JsonKey(name: 'display_image') required this.displayImage});

  factory _$RoomDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomDetailModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'street_location')
  final String streetLocation;
  @override
  final String city;
  @override
  final String price;
  @override
  @JsonKey(name: 'display_image')
  final String displayImage;

  @override
  String toString() {
    return 'RoomDetailModel(id: $id, streetLocation: $streetLocation, city: $city, price: $price, displayImage: $displayImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetLocation, streetLocation) ||
                other.streetLocation == streetLocation) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.displayImage, displayImage) ||
                other.displayImage == displayImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, streetLocation, city, price, displayImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomDetailModelImplCopyWith<_$RoomDetailModelImpl> get copyWith =>
      __$$RoomDetailModelImplCopyWithImpl<_$RoomDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomDetailModelImplToJson(
      this,
    );
  }
}

abstract class _RoomDetailModel implements RoomDetailModel {
  const factory _RoomDetailModel(
      {required final String id,
      @JsonKey(name: 'street_location') required final String streetLocation,
      required final String city,
      required final String price,
      @JsonKey(name: 'display_image')
      required final String displayImage}) = _$RoomDetailModelImpl;

  factory _RoomDetailModel.fromJson(Map<String, dynamic> json) =
      _$RoomDetailModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'street_location')
  String get streetLocation;
  @override
  String get city;
  @override
  String get price;
  @override
  @JsonKey(name: 'display_image')
  String get displayImage;
  @override
  @JsonKey(ignore: true)
  _$$RoomDetailModelImplCopyWith<_$RoomDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
