// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddRoomPayLoad _$AddRoomPayLoadFromJson(Map<String, dynamic> json) {
  return _AddRoomPayLoad.fromJson(json);
}

/// @nodoc
mixin _$AddRoomPayLoad {
  @JsonKey(name: "street_location")
  String get streetLocation => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_images')
  List<RoomImage> get roomImages => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddRoomPayLoadCopyWith<AddRoomPayLoad> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRoomPayLoadCopyWith<$Res> {
  factory $AddRoomPayLoadCopyWith(
          AddRoomPayLoad value, $Res Function(AddRoomPayLoad) then) =
      _$AddRoomPayLoadCopyWithImpl<$Res, AddRoomPayLoad>;
  @useResult
  $Res call(
      {@JsonKey(name: "street_location") String streetLocation,
      String city,
      String price,
      @JsonKey(name: 'room_images') List<RoomImage> roomImages,
      String description});
}

/// @nodoc
class _$AddRoomPayLoadCopyWithImpl<$Res, $Val extends AddRoomPayLoad>
    implements $AddRoomPayLoadCopyWith<$Res> {
  _$AddRoomPayLoadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetLocation = null,
    Object? city = null,
    Object? price = null,
    Object? roomImages = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
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
      roomImages: null == roomImages
          ? _value.roomImages
          : roomImages // ignore: cast_nullable_to_non_nullable
              as List<RoomImage>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddRoomPayLoadImplCopyWith<$Res>
    implements $AddRoomPayLoadCopyWith<$Res> {
  factory _$$AddRoomPayLoadImplCopyWith(_$AddRoomPayLoadImpl value,
          $Res Function(_$AddRoomPayLoadImpl) then) =
      __$$AddRoomPayLoadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "street_location") String streetLocation,
      String city,
      String price,
      @JsonKey(name: 'room_images') List<RoomImage> roomImages,
      String description});
}

/// @nodoc
class __$$AddRoomPayLoadImplCopyWithImpl<$Res>
    extends _$AddRoomPayLoadCopyWithImpl<$Res, _$AddRoomPayLoadImpl>
    implements _$$AddRoomPayLoadImplCopyWith<$Res> {
  __$$AddRoomPayLoadImplCopyWithImpl(
      _$AddRoomPayLoadImpl _value, $Res Function(_$AddRoomPayLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetLocation = null,
    Object? city = null,
    Object? price = null,
    Object? roomImages = null,
    Object? description = null,
  }) {
    return _then(_$AddRoomPayLoadImpl(
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
      roomImages: null == roomImages
          ? _value._roomImages
          : roomImages // ignore: cast_nullable_to_non_nullable
              as List<RoomImage>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddRoomPayLoadImpl implements _AddRoomPayLoad {
  const _$AddRoomPayLoadImpl(
      {@JsonKey(name: "street_location") required this.streetLocation,
      required this.city,
      required this.price,
      @JsonKey(name: 'room_images') required final List<RoomImage> roomImages,
      required this.description})
      : _roomImages = roomImages;

  factory _$AddRoomPayLoadImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddRoomPayLoadImplFromJson(json);

  @override
  @JsonKey(name: "street_location")
  final String streetLocation;
  @override
  final String city;
  @override
  final String price;
  final List<RoomImage> _roomImages;
  @override
  @JsonKey(name: 'room_images')
  List<RoomImage> get roomImages {
    if (_roomImages is EqualUnmodifiableListView) return _roomImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomImages);
  }

  @override
  final String description;

  @override
  String toString() {
    return 'AddRoomPayLoad(streetLocation: $streetLocation, city: $city, price: $price, roomImages: $roomImages, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRoomPayLoadImpl &&
            (identical(other.streetLocation, streetLocation) ||
                other.streetLocation == streetLocation) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._roomImages, _roomImages) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, streetLocation, city, price,
      const DeepCollectionEquality().hash(_roomImages), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRoomPayLoadImplCopyWith<_$AddRoomPayLoadImpl> get copyWith =>
      __$$AddRoomPayLoadImplCopyWithImpl<_$AddRoomPayLoadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddRoomPayLoadImplToJson(
      this,
    );
  }
}

abstract class _AddRoomPayLoad implements AddRoomPayLoad {
  const factory _AddRoomPayLoad(
      {@JsonKey(name: "street_location") required final String streetLocation,
      required final String city,
      required final String price,
      @JsonKey(name: 'room_images') required final List<RoomImage> roomImages,
      required final String description}) = _$AddRoomPayLoadImpl;

  factory _AddRoomPayLoad.fromJson(Map<String, dynamic> json) =
      _$AddRoomPayLoadImpl.fromJson;

  @override
  @JsonKey(name: "street_location")
  String get streetLocation;
  @override
  String get city;
  @override
  String get price;
  @override
  @JsonKey(name: 'room_images')
  List<RoomImage> get roomImages;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$AddRoomPayLoadImplCopyWith<_$AddRoomPayLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomImage _$RoomImageFromJson(Map<String, dynamic> json) {
  return _RoomImage.fromJson(json);
}

/// @nodoc
mixin _$RoomImage {
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomImageCopyWith<RoomImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomImageCopyWith<$Res> {
  factory $RoomImageCopyWith(RoomImage value, $Res Function(RoomImage) then) =
      _$RoomImageCopyWithImpl<$Res, RoomImage>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class _$RoomImageCopyWithImpl<$Res, $Val extends RoomImage>
    implements $RoomImageCopyWith<$Res> {
  _$RoomImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomImageImplCopyWith<$Res>
    implements $RoomImageCopyWith<$Res> {
  factory _$$RoomImageImplCopyWith(
          _$RoomImageImpl value, $Res Function(_$RoomImageImpl) then) =
      __$$RoomImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$RoomImageImplCopyWithImpl<$Res>
    extends _$RoomImageCopyWithImpl<$Res, _$RoomImageImpl>
    implements _$$RoomImageImplCopyWith<$Res> {
  __$$RoomImageImplCopyWithImpl(
      _$RoomImageImpl _value, $Res Function(_$RoomImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$RoomImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomImageImpl implements _RoomImage {
  const _$RoomImageImpl({required this.image});

  factory _$RoomImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomImageImplFromJson(json);

  @override
  final String image;

  @override
  String toString() {
    return 'RoomImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomImageImplCopyWith<_$RoomImageImpl> get copyWith =>
      __$$RoomImageImplCopyWithImpl<_$RoomImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomImageImplToJson(
      this,
    );
  }
}

abstract class _RoomImage implements RoomImage {
  const factory _RoomImage({required final String image}) = _$RoomImageImpl;

  factory _RoomImage.fromJson(Map<String, dynamic> json) =
      _$RoomImageImpl.fromJson;

  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$RoomImageImplCopyWith<_$RoomImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
