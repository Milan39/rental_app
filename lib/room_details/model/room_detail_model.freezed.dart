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
  @JsonKey(name: "street_location")
  String get streetLocation => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: "display_image")
  String get displayImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_image')
  List<RoomImage> get roomImage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "is_published")
  bool get isPublished => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "landlord_user")
  LandLordUser get landLordUser => throw _privateConstructorUsedError;

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
      @JsonKey(name: "street_location") String streetLocation,
      String city,
      String price,
      @JsonKey(name: "display_image") String displayImage,
      @JsonKey(name: 'room_image') List<RoomImage> roomImage,
      String description,
      @JsonKey(name: "is_published") bool isPublished,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "landlord_user") LandLordUser landLordUser});

  $LandLordUserCopyWith<$Res> get landLordUser;
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
    Object? roomImage = null,
    Object? description = null,
    Object? isPublished = null,
    Object? isActive = null,
    Object? landLordUser = null,
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
      roomImage: null == roomImage
          ? _value.roomImage
          : roomImage // ignore: cast_nullable_to_non_nullable
              as List<RoomImage>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      landLordUser: null == landLordUser
          ? _value.landLordUser
          : landLordUser // ignore: cast_nullable_to_non_nullable
              as LandLordUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LandLordUserCopyWith<$Res> get landLordUser {
    return $LandLordUserCopyWith<$Res>(_value.landLordUser, (value) {
      return _then(_value.copyWith(landLordUser: value) as $Val);
    });
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
      @JsonKey(name: "street_location") String streetLocation,
      String city,
      String price,
      @JsonKey(name: "display_image") String displayImage,
      @JsonKey(name: 'room_image') List<RoomImage> roomImage,
      String description,
      @JsonKey(name: "is_published") bool isPublished,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "landlord_user") LandLordUser landLordUser});

  @override
  $LandLordUserCopyWith<$Res> get landLordUser;
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
    Object? roomImage = null,
    Object? description = null,
    Object? isPublished = null,
    Object? isActive = null,
    Object? landLordUser = null,
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
      roomImage: null == roomImage
          ? _value._roomImage
          : roomImage // ignore: cast_nullable_to_non_nullable
              as List<RoomImage>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      landLordUser: null == landLordUser
          ? _value.landLordUser
          : landLordUser // ignore: cast_nullable_to_non_nullable
              as LandLordUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomDetailModelImpl implements _RoomDetailModel {
  const _$RoomDetailModelImpl(
      {required this.id,
      @JsonKey(name: "street_location") required this.streetLocation,
      required this.city,
      required this.price,
      @JsonKey(name: "display_image") required this.displayImage,
      @JsonKey(name: 'room_image') required final List<RoomImage> roomImage,
      required this.description,
      @JsonKey(name: "is_published") required this.isPublished,
      @JsonKey(name: "is_active") required this.isActive,
      @JsonKey(name: "landlord_user") required this.landLordUser})
      : _roomImage = roomImage;

  factory _$RoomDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomDetailModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "street_location")
  final String streetLocation;
  @override
  final String city;
  @override
  final String price;
  @override
  @JsonKey(name: "display_image")
  final String displayImage;
  final List<RoomImage> _roomImage;
  @override
  @JsonKey(name: 'room_image')
  List<RoomImage> get roomImage {
    if (_roomImage is EqualUnmodifiableListView) return _roomImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomImage);
  }

  @override
  final String description;
  @override
  @JsonKey(name: "is_published")
  final bool isPublished;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;
  @override
  @JsonKey(name: "landlord_user")
  final LandLordUser landLordUser;

  @override
  String toString() {
    return 'RoomDetailModel(id: $id, streetLocation: $streetLocation, city: $city, price: $price, displayImage: $displayImage, roomImage: $roomImage, description: $description, isPublished: $isPublished, isActive: $isActive, landLordUser: $landLordUser)';
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
                other.displayImage == displayImage) &&
            const DeepCollectionEquality()
                .equals(other._roomImage, _roomImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.landLordUser, landLordUser) ||
                other.landLordUser == landLordUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      streetLocation,
      city,
      price,
      displayImage,
      const DeepCollectionEquality().hash(_roomImage),
      description,
      isPublished,
      isActive,
      landLordUser);

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
      @JsonKey(name: "street_location") required final String streetLocation,
      required final String city,
      required final String price,
      @JsonKey(name: "display_image") required final String displayImage,
      @JsonKey(name: 'room_image') required final List<RoomImage> roomImage,
      required final String description,
      @JsonKey(name: "is_published") required final bool isPublished,
      @JsonKey(name: "is_active") required final bool isActive,
      @JsonKey(name: "landlord_user")
      required final LandLordUser landLordUser}) = _$RoomDetailModelImpl;

  factory _RoomDetailModel.fromJson(Map<String, dynamic> json) =
      _$RoomDetailModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "street_location")
  String get streetLocation;
  @override
  String get city;
  @override
  String get price;
  @override
  @JsonKey(name: "display_image")
  String get displayImage;
  @override
  @JsonKey(name: 'room_image')
  List<RoomImage> get roomImage;
  @override
  String get description;
  @override
  @JsonKey(name: "is_published")
  bool get isPublished;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(name: "landlord_user")
  LandLordUser get landLordUser;
  @override
  @JsonKey(ignore: true)
  _$$RoomDetailModelImplCopyWith<_$RoomDetailModelImpl> get copyWith =>
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

LandLordUser _$LandLordUserFromJson(Map<String, dynamic> json) {
  return _LandLordUser.fromJson(json);
}

/// @nodoc
mixin _$LandLordUser {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullname')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandLordUserCopyWith<LandLordUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandLordUserCopyWith<$Res> {
  factory $LandLordUserCopyWith(
          LandLordUser value, $Res Function(LandLordUser) then) =
      _$LandLordUserCopyWithImpl<$Res, LandLordUser>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'fullname') String fullName,
      @JsonKey(name: 'phone_number') String phoneNumber});
}

/// @nodoc
class _$LandLordUserCopyWithImpl<$Res, $Val extends LandLordUser>
    implements $LandLordUserCopyWith<$Res> {
  _$LandLordUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LandLordUserImplCopyWith<$Res>
    implements $LandLordUserCopyWith<$Res> {
  factory _$$LandLordUserImplCopyWith(
          _$LandLordUserImpl value, $Res Function(_$LandLordUserImpl) then) =
      __$$LandLordUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'fullname') String fullName,
      @JsonKey(name: 'phone_number') String phoneNumber});
}

/// @nodoc
class __$$LandLordUserImplCopyWithImpl<$Res>
    extends _$LandLordUserCopyWithImpl<$Res, _$LandLordUserImpl>
    implements _$$LandLordUserImplCopyWith<$Res> {
  __$$LandLordUserImplCopyWithImpl(
      _$LandLordUserImpl _value, $Res Function(_$LandLordUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$LandLordUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LandLordUserImpl implements _LandLordUser {
  const _$LandLordUserImpl(
      {required this.id,
      @JsonKey(name: 'fullname') required this.fullName,
      @JsonKey(name: 'phone_number') required this.phoneNumber});

  factory _$LandLordUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$LandLordUserImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'fullname')
  final String fullName;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @override
  String toString() {
    return 'LandLordUser(id: $id, fullName: $fullName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LandLordUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LandLordUserImplCopyWith<_$LandLordUserImpl> get copyWith =>
      __$$LandLordUserImplCopyWithImpl<_$LandLordUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LandLordUserImplToJson(
      this,
    );
  }
}

abstract class _LandLordUser implements LandLordUser {
  const factory _LandLordUser(
          {required final String id,
          @JsonKey(name: 'fullname') required final String fullName,
          @JsonKey(name: 'phone_number') required final String phoneNumber}) =
      _$LandLordUserImpl;

  factory _LandLordUser.fromJson(Map<String, dynamic> json) =
      _$LandLordUserImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'fullname')
  String get fullName;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$LandLordUserImplCopyWith<_$LandLordUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingResponse _$BookingResponseFromJson(Map<String, dynamic> json) {
  return _BookingResponse.fromJson(json);
}

/// @nodoc
mixin _$BookingResponse {
  String get id => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  String get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "normal_user")
  String get normalUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingResponseCopyWith<BookingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingResponseCopyWith<$Res> {
  factory $BookingResponseCopyWith(
          BookingResponse value, $Res Function(BookingResponse) then) =
      _$BookingResponseCopyWithImpl<$Res, BookingResponse>;
  @useResult
  $Res call(
      {String id,
      String room,
      @JsonKey(name: "total_amount") String totalAmount,
      @JsonKey(name: "normal_user") String normalUser});
}

/// @nodoc
class _$BookingResponseCopyWithImpl<$Res, $Val extends BookingResponse>
    implements $BookingResponseCopyWith<$Res> {
  _$BookingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? room = null,
    Object? totalAmount = null,
    Object? normalUser = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      normalUser: null == normalUser
          ? _value.normalUser
          : normalUser // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingResponseImplCopyWith<$Res>
    implements $BookingResponseCopyWith<$Res> {
  factory _$$BookingResponseImplCopyWith(_$BookingResponseImpl value,
          $Res Function(_$BookingResponseImpl) then) =
      __$$BookingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String room,
      @JsonKey(name: "total_amount") String totalAmount,
      @JsonKey(name: "normal_user") String normalUser});
}

/// @nodoc
class __$$BookingResponseImplCopyWithImpl<$Res>
    extends _$BookingResponseCopyWithImpl<$Res, _$BookingResponseImpl>
    implements _$$BookingResponseImplCopyWith<$Res> {
  __$$BookingResponseImplCopyWithImpl(
      _$BookingResponseImpl _value, $Res Function(_$BookingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? room = null,
    Object? totalAmount = null,
    Object? normalUser = null,
  }) {
    return _then(_$BookingResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      normalUser: null == normalUser
          ? _value.normalUser
          : normalUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingResponseImpl implements _BookingResponse {
  const _$BookingResponseImpl(
      {required this.id,
      required this.room,
      @JsonKey(name: "total_amount") required this.totalAmount,
      @JsonKey(name: "normal_user") required this.normalUser});

  factory _$BookingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String room;
  @override
  @JsonKey(name: "total_amount")
  final String totalAmount;
  @override
  @JsonKey(name: "normal_user")
  final String normalUser;

  @override
  String toString() {
    return 'BookingResponse(id: $id, room: $room, totalAmount: $totalAmount, normalUser: $normalUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.normalUser, normalUser) ||
                other.normalUser == normalUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, room, totalAmount, normalUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingResponseImplCopyWith<_$BookingResponseImpl> get copyWith =>
      __$$BookingResponseImplCopyWithImpl<_$BookingResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingResponseImplToJson(
      this,
    );
  }
}

abstract class _BookingResponse implements BookingResponse {
  const factory _BookingResponse(
          {required final String id,
          required final String room,
          @JsonKey(name: "total_amount") required final String totalAmount,
          @JsonKey(name: "normal_user") required final String normalUser}) =
      _$BookingResponseImpl;

  factory _BookingResponse.fromJson(Map<String, dynamic> json) =
      _$BookingResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get room;
  @override
  @JsonKey(name: "total_amount")
  String get totalAmount;
  @override
  @JsonKey(name: "normal_user")
  String get normalUser;
  @override
  @JsonKey(ignore: true)
  _$$BookingResponseImplCopyWith<_$BookingResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KhaltiCheckoutModel _$KhaltiCheckoutModelFromJson(Map<String, dynamic> json) {
  return _KhaltiCheckoutModel.fromJson(json);
}

/// @nodoc
mixin _$KhaltiCheckoutModel {
  String get pidx => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KhaltiCheckoutModelCopyWith<KhaltiCheckoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KhaltiCheckoutModelCopyWith<$Res> {
  factory $KhaltiCheckoutModelCopyWith(
          KhaltiCheckoutModel value, $Res Function(KhaltiCheckoutModel) then) =
      _$KhaltiCheckoutModelCopyWithImpl<$Res, KhaltiCheckoutModel>;
  @useResult
  $Res call({String pidx, String amount});
}

/// @nodoc
class _$KhaltiCheckoutModelCopyWithImpl<$Res, $Val extends KhaltiCheckoutModel>
    implements $KhaltiCheckoutModelCopyWith<$Res> {
  _$KhaltiCheckoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pidx = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      pidx: null == pidx
          ? _value.pidx
          : pidx // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KhaltiCheckoutModelImplCopyWith<$Res>
    implements $KhaltiCheckoutModelCopyWith<$Res> {
  factory _$$KhaltiCheckoutModelImplCopyWith(_$KhaltiCheckoutModelImpl value,
          $Res Function(_$KhaltiCheckoutModelImpl) then) =
      __$$KhaltiCheckoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pidx, String amount});
}

/// @nodoc
class __$$KhaltiCheckoutModelImplCopyWithImpl<$Res>
    extends _$KhaltiCheckoutModelCopyWithImpl<$Res, _$KhaltiCheckoutModelImpl>
    implements _$$KhaltiCheckoutModelImplCopyWith<$Res> {
  __$$KhaltiCheckoutModelImplCopyWithImpl(_$KhaltiCheckoutModelImpl _value,
      $Res Function(_$KhaltiCheckoutModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pidx = null,
    Object? amount = null,
  }) {
    return _then(_$KhaltiCheckoutModelImpl(
      pidx: null == pidx
          ? _value.pidx
          : pidx // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KhaltiCheckoutModelImpl implements _KhaltiCheckoutModel {
  const _$KhaltiCheckoutModelImpl({required this.pidx, required this.amount});

  factory _$KhaltiCheckoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KhaltiCheckoutModelImplFromJson(json);

  @override
  final String pidx;
  @override
  final String amount;

  @override
  String toString() {
    return 'KhaltiCheckoutModel(pidx: $pidx, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KhaltiCheckoutModelImpl &&
            (identical(other.pidx, pidx) || other.pidx == pidx) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pidx, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KhaltiCheckoutModelImplCopyWith<_$KhaltiCheckoutModelImpl> get copyWith =>
      __$$KhaltiCheckoutModelImplCopyWithImpl<_$KhaltiCheckoutModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KhaltiCheckoutModelImplToJson(
      this,
    );
  }
}

abstract class _KhaltiCheckoutModel implements KhaltiCheckoutModel {
  const factory _KhaltiCheckoutModel(
      {required final String pidx,
      required final String amount}) = _$KhaltiCheckoutModelImpl;

  factory _KhaltiCheckoutModel.fromJson(Map<String, dynamic> json) =
      _$KhaltiCheckoutModelImpl.fromJson;

  @override
  String get pidx;
  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$KhaltiCheckoutModelImplCopyWith<_$KhaltiCheckoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InitiateKhaltiResponseModel _$InitiateKhaltiResponseModelFromJson(
    Map<String, dynamic> json) {
  return _InitiateKhaltiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$InitiateKhaltiResponseModel {
  String get pidx => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitiateKhaltiResponseModelCopyWith<InitiateKhaltiResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitiateKhaltiResponseModelCopyWith<$Res> {
  factory $InitiateKhaltiResponseModelCopyWith(
          InitiateKhaltiResponseModel value,
          $Res Function(InitiateKhaltiResponseModel) then) =
      _$InitiateKhaltiResponseModelCopyWithImpl<$Res,
          InitiateKhaltiResponseModel>;
  @useResult
  $Res call({String pidx});
}

/// @nodoc
class _$InitiateKhaltiResponseModelCopyWithImpl<$Res,
        $Val extends InitiateKhaltiResponseModel>
    implements $InitiateKhaltiResponseModelCopyWith<$Res> {
  _$InitiateKhaltiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pidx = null,
  }) {
    return _then(_value.copyWith(
      pidx: null == pidx
          ? _value.pidx
          : pidx // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitiateKhaltiResponseModelImplCopyWith<$Res>
    implements $InitiateKhaltiResponseModelCopyWith<$Res> {
  factory _$$InitiateKhaltiResponseModelImplCopyWith(
          _$InitiateKhaltiResponseModelImpl value,
          $Res Function(_$InitiateKhaltiResponseModelImpl) then) =
      __$$InitiateKhaltiResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pidx});
}

/// @nodoc
class __$$InitiateKhaltiResponseModelImplCopyWithImpl<$Res>
    extends _$InitiateKhaltiResponseModelCopyWithImpl<$Res,
        _$InitiateKhaltiResponseModelImpl>
    implements _$$InitiateKhaltiResponseModelImplCopyWith<$Res> {
  __$$InitiateKhaltiResponseModelImplCopyWithImpl(
      _$InitiateKhaltiResponseModelImpl _value,
      $Res Function(_$InitiateKhaltiResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pidx = null,
  }) {
    return _then(_$InitiateKhaltiResponseModelImpl(
      pidx: null == pidx
          ? _value.pidx
          : pidx // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitiateKhaltiResponseModelImpl
    implements _InitiateKhaltiResponseModel {
  const _$InitiateKhaltiResponseModelImpl({required this.pidx});

  factory _$InitiateKhaltiResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InitiateKhaltiResponseModelImplFromJson(json);

  @override
  final String pidx;

  @override
  String toString() {
    return 'InitiateKhaltiResponseModel(pidx: $pidx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiateKhaltiResponseModelImpl &&
            (identical(other.pidx, pidx) || other.pidx == pidx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pidx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiateKhaltiResponseModelImplCopyWith<_$InitiateKhaltiResponseModelImpl>
      get copyWith => __$$InitiateKhaltiResponseModelImplCopyWithImpl<
          _$InitiateKhaltiResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitiateKhaltiResponseModelImplToJson(
      this,
    );
  }
}

abstract class _InitiateKhaltiResponseModel
    implements InitiateKhaltiResponseModel {
  const factory _InitiateKhaltiResponseModel({required final String pidx}) =
      _$InitiateKhaltiResponseModelImpl;

  factory _InitiateKhaltiResponseModel.fromJson(Map<String, dynamic> json) =
      _$InitiateKhaltiResponseModelImpl.fromJson;

  @override
  String get pidx;
  @override
  @JsonKey(ignore: true)
  _$$InitiateKhaltiResponseModelImplCopyWith<_$InitiateKhaltiResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
