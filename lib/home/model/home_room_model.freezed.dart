// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeRoomModel _$HomeRoomModelFromJson(Map<String, dynamic> json) {
  return _HomeRoomModel.fromJson(json);
}

/// @nodoc
mixin _$HomeRoomModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_location')
  String get streetLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_published')
  bool? get isPublished => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_image')
  String get displayImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeRoomModelCopyWith<HomeRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeRoomModelCopyWith<$Res> {
  factory $HomeRoomModelCopyWith(
          HomeRoomModel value, $Res Function(HomeRoomModel) then) =
      _$HomeRoomModelCopyWithImpl<$Res, HomeRoomModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'street_location') String streetLocation,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'is_published') bool? isPublished,
      String city,
      String price,
      @JsonKey(name: 'display_image') String displayImage});
}

/// @nodoc
class _$HomeRoomModelCopyWithImpl<$Res, $Val extends HomeRoomModel>
    implements $HomeRoomModelCopyWith<$Res> {
  _$HomeRoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetLocation = null,
    Object? isActive = freezed,
    Object? isPublished = freezed,
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
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$HomeRoomModelImplCopyWith<$Res>
    implements $HomeRoomModelCopyWith<$Res> {
  factory _$$HomeRoomModelImplCopyWith(
          _$HomeRoomModelImpl value, $Res Function(_$HomeRoomModelImpl) then) =
      __$$HomeRoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'street_location') String streetLocation,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'is_published') bool? isPublished,
      String city,
      String price,
      @JsonKey(name: 'display_image') String displayImage});
}

/// @nodoc
class __$$HomeRoomModelImplCopyWithImpl<$Res>
    extends _$HomeRoomModelCopyWithImpl<$Res, _$HomeRoomModelImpl>
    implements _$$HomeRoomModelImplCopyWith<$Res> {
  __$$HomeRoomModelImplCopyWithImpl(
      _$HomeRoomModelImpl _value, $Res Function(_$HomeRoomModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetLocation = null,
    Object? isActive = freezed,
    Object? isPublished = freezed,
    Object? city = null,
    Object? price = null,
    Object? displayImage = null,
  }) {
    return _then(_$HomeRoomModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streetLocation: null == streetLocation
          ? _value.streetLocation
          : streetLocation // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$HomeRoomModelImpl implements _HomeRoomModel {
  const _$HomeRoomModelImpl(
      {required this.id,
      @JsonKey(name: 'street_location') required this.streetLocation,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'is_published') this.isPublished,
      required this.city,
      required this.price,
      @JsonKey(name: 'display_image') required this.displayImage});

  factory _$HomeRoomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeRoomModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'street_location')
  final String streetLocation;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'is_published')
  final bool? isPublished;
  @override
  final String city;
  @override
  final String price;
  @override
  @JsonKey(name: 'display_image')
  final String displayImage;

  @override
  String toString() {
    return 'HomeRoomModel(id: $id, streetLocation: $streetLocation, isActive: $isActive, isPublished: $isPublished, city: $city, price: $price, displayImage: $displayImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRoomModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetLocation, streetLocation) ||
                other.streetLocation == streetLocation) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.displayImage, displayImage) ||
                other.displayImage == displayImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, streetLocation, isActive,
      isPublished, city, price, displayImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeRoomModelImplCopyWith<_$HomeRoomModelImpl> get copyWith =>
      __$$HomeRoomModelImplCopyWithImpl<_$HomeRoomModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeRoomModelImplToJson(
      this,
    );
  }
}

abstract class _HomeRoomModel implements HomeRoomModel {
  const factory _HomeRoomModel(
      {required final String id,
      @JsonKey(name: 'street_location') required final String streetLocation,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'is_published') final bool? isPublished,
      required final String city,
      required final String price,
      @JsonKey(name: 'display_image')
      required final String displayImage}) = _$HomeRoomModelImpl;

  factory _HomeRoomModel.fromJson(Map<String, dynamic> json) =
      _$HomeRoomModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'street_location')
  String get streetLocation;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'is_published')
  bool? get isPublished;
  @override
  String get city;
  @override
  String get price;
  @override
  @JsonKey(name: 'display_image')
  String get displayImage;
  @override
  @JsonKey(ignore: true)
  _$$HomeRoomModelImplCopyWith<_$HomeRoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
