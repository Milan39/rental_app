// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginPayLoadModel _$LoginPayLoadModelFromJson(Map<String, dynamic> json) {
  return _LoginPayLoadModel.fromJson(json);
}

/// @nodoc
mixin _$LoginPayLoadModel {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginPayLoadModelCopyWith<LoginPayLoadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPayLoadModelCopyWith<$Res> {
  factory $LoginPayLoadModelCopyWith(
          LoginPayLoadModel value, $Res Function(LoginPayLoadModel) then) =
      _$LoginPayLoadModelCopyWithImpl<$Res, LoginPayLoadModel>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginPayLoadModelCopyWithImpl<$Res, $Val extends LoginPayLoadModel>
    implements $LoginPayLoadModelCopyWith<$Res> {
  _$LoginPayLoadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginPayLoadModelImplCopyWith<$Res>
    implements $LoginPayLoadModelCopyWith<$Res> {
  factory _$$LoginPayLoadModelImplCopyWith(_$LoginPayLoadModelImpl value,
          $Res Function(_$LoginPayLoadModelImpl) then) =
      __$$LoginPayLoadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginPayLoadModelImplCopyWithImpl<$Res>
    extends _$LoginPayLoadModelCopyWithImpl<$Res, _$LoginPayLoadModelImpl>
    implements _$$LoginPayLoadModelImplCopyWith<$Res> {
  __$$LoginPayLoadModelImplCopyWithImpl(_$LoginPayLoadModelImpl _value,
      $Res Function(_$LoginPayLoadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginPayLoadModelImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginPayLoadModelImpl implements _LoginPayLoadModel {
  const _$LoginPayLoadModelImpl(
      {required this.username, required this.password});

  factory _$LoginPayLoadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginPayLoadModelImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginPayLoadModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPayLoadModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPayLoadModelImplCopyWith<_$LoginPayLoadModelImpl> get copyWith =>
      __$$LoginPayLoadModelImplCopyWithImpl<_$LoginPayLoadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginPayLoadModelImplToJson(
      this,
    );
  }
}

abstract class _LoginPayLoadModel implements LoginPayLoadModel {
  const factory _LoginPayLoadModel(
      {required final String username,
      required final String password}) = _$LoginPayLoadModelImpl;

  factory _LoginPayLoadModel.fromJson(Map<String, dynamic> json) =
      _$LoginPayLoadModelImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginPayLoadModelImplCopyWith<_$LoginPayLoadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseModel {
  String get access => throw _privateConstructorUsedError;
  String get refresh => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res, LoginResponseModel>;
  @useResult
  $Res call({String access, String refresh, UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res, $Val extends LoginResponseModel>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseModelImplCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$$LoginResponseModelImplCopyWith(_$LoginResponseModelImpl value,
          $Res Function(_$LoginResponseModelImpl) then) =
      __$$LoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access, String refresh, UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginResponseModelImplCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res, _$LoginResponseModelImpl>
    implements _$$LoginResponseModelImplCopyWith<$Res> {
  __$$LoginResponseModelImplCopyWithImpl(_$LoginResponseModelImpl _value,
      $Res Function(_$LoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
    Object? user = null,
  }) {
    return _then(_$LoginResponseModelImpl(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseModelImpl implements _LoginResponseModel {
  const _$LoginResponseModelImpl(
      {required this.access, required this.refresh, required this.user});

  factory _$LoginResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseModelImplFromJson(json);

  @override
  final String access;
  @override
  final String refresh;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'LoginResponseModel(access: $access, refresh: $refresh, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseModelImpl &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access, refresh, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      __$$LoginResponseModelImplCopyWithImpl<_$LoginResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  const factory _LoginResponseModel(
      {required final String access,
      required final String refresh,
      required final UserModel user}) = _$LoginResponseModelImpl;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginResponseModelImpl.fromJson;

  @override
  String get access;
  @override
  String get refresh;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullname')
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_first_login')
  bool get isFirstLogin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'fullname') String fullName,
      String email,
      String avatar,
      @JsonKey(name: 'user_type') String userType,
      @JsonKey(name: 'is_first_login') bool isFirstLogin});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? avatar = null,
    Object? userType = null,
    Object? isFirstLogin = null,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstLogin: null == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'fullname') String fullName,
      String email,
      String avatar,
      @JsonKey(name: 'user_type') String userType,
      @JsonKey(name: 'is_first_login') bool isFirstLogin});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? avatar = null,
    Object? userType = null,
    Object? isFirstLogin = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstLogin: null == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      @JsonKey(name: 'fullname') required this.fullName,
      required this.email,
      required this.avatar,
      @JsonKey(name: 'user_type') required this.userType,
      @JsonKey(name: 'is_first_login') required this.isFirstLogin});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'fullname')
  final String fullName;
  @override
  final String email;
  @override
  final String avatar;
  @override
  @JsonKey(name: 'user_type')
  final String userType;
  @override
  @JsonKey(name: 'is_first_login')
  final bool isFirstLogin;

  @override
  String toString() {
    return 'UserModel(id: $id, fullName: $fullName, email: $email, avatar: $avatar, userType: $userType, isFirstLogin: $isFirstLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.isFirstLogin, isFirstLogin) ||
                other.isFirstLogin == isFirstLogin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fullName, email, avatar, userType, isFirstLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
          {required final String id,
          @JsonKey(name: 'fullname') required final String fullName,
          required final String email,
          required final String avatar,
          @JsonKey(name: 'user_type') required final String userType,
          @JsonKey(name: 'is_first_login') required final bool isFirstLogin}) =
      _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'fullname')
  String get fullName;
  @override
  String get email;
  @override
  String get avatar;
  @override
  @JsonKey(name: 'user_type')
  String get userType;
  @override
  @JsonKey(name: 'is_first_login')
  bool get isFirstLogin;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterPayload _$RegisterPayloadFromJson(Map<String, dynamic> json) {
  return _RegisterPayload.fromJson(json);
}

/// @nodoc
mixin _$RegisterPayload {
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "fullname")
  String get fullName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterPayloadCopyWith<RegisterPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPayloadCopyWith<$Res> {
  factory $RegisterPayloadCopyWith(
          RegisterPayload value, $Res Function(RegisterPayload) then) =
      _$RegisterPayloadCopyWithImpl<$Res, RegisterPayload>;
  @useResult
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber,
      String email,
      @JsonKey(name: "fullname") String fullName,
      String password});
}

/// @nodoc
class _$RegisterPayloadCopyWithImpl<$Res, $Val extends RegisterPayload>
    implements $RegisterPayloadCopyWith<$Res> {
  _$RegisterPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? email = null,
    Object? fullName = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterPayloadImplCopyWith<$Res>
    implements $RegisterPayloadCopyWith<$Res> {
  factory _$$RegisterPayloadImplCopyWith(_$RegisterPayloadImpl value,
          $Res Function(_$RegisterPayloadImpl) then) =
      __$$RegisterPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber,
      String email,
      @JsonKey(name: "fullname") String fullName,
      String password});
}

/// @nodoc
class __$$RegisterPayloadImplCopyWithImpl<$Res>
    extends _$RegisterPayloadCopyWithImpl<$Res, _$RegisterPayloadImpl>
    implements _$$RegisterPayloadImplCopyWith<$Res> {
  __$$RegisterPayloadImplCopyWithImpl(
      _$RegisterPayloadImpl _value, $Res Function(_$RegisterPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? email = null,
    Object? fullName = null,
    Object? password = null,
  }) {
    return _then(_$RegisterPayloadImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterPayloadImpl implements _RegisterPayload {
  const _$RegisterPayloadImpl(
      {@JsonKey(name: "phone_number") required this.phoneNumber,
      required this.email,
      @JsonKey(name: "fullname") required this.fullName,
      required this.password});

  factory _$RegisterPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterPayloadImplFromJson(json);

  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  final String email;
  @override
  @JsonKey(name: "fullname")
  final String fullName;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterPayload(phoneNumber: $phoneNumber, email: $email, fullName: $fullName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPayloadImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, email, fullName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPayloadImplCopyWith<_$RegisterPayloadImpl> get copyWith =>
      __$$RegisterPayloadImplCopyWithImpl<_$RegisterPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterPayloadImplToJson(
      this,
    );
  }
}

abstract class _RegisterPayload implements RegisterPayload {
  const factory _RegisterPayload(
      {@JsonKey(name: "phone_number") required final String phoneNumber,
      required final String email,
      @JsonKey(name: "fullname") required final String fullName,
      required final String password}) = _$RegisterPayloadImpl;

  factory _RegisterPayload.fromJson(Map<String, dynamic> json) =
      _$RegisterPayloadImpl.fromJson;

  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  String get email;
  @override
  @JsonKey(name: "fullname")
  String get fullName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RegisterPayloadImplCopyWith<_$RegisterPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return _RegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponse {
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "fullname")
  String get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseCopyWith<RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseCopyWith<$Res> {
  factory $RegisterResponseCopyWith(
          RegisterResponse value, $Res Function(RegisterResponse) then) =
      _$RegisterResponseCopyWithImpl<$Res, RegisterResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber,
      String email,
      @JsonKey(name: "fullname") String fullName});
}

/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res, $Val extends RegisterResponse>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? email = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterResponseImplCopyWith<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  factory _$$RegisterResponseImplCopyWith(_$RegisterResponseImpl value,
          $Res Function(_$RegisterResponseImpl) then) =
      __$$RegisterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber,
      String email,
      @JsonKey(name: "fullname") String fullName});
}

/// @nodoc
class __$$RegisterResponseImplCopyWithImpl<$Res>
    extends _$RegisterResponseCopyWithImpl<$Res, _$RegisterResponseImpl>
    implements _$$RegisterResponseImplCopyWith<$Res> {
  __$$RegisterResponseImplCopyWithImpl(_$RegisterResponseImpl _value,
      $Res Function(_$RegisterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? email = null,
    Object? fullName = null,
  }) {
    return _then(_$RegisterResponseImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterResponseImpl implements _RegisterResponse {
  const _$RegisterResponseImpl(
      {@JsonKey(name: "phone_number") required this.phoneNumber,
      required this.email,
      @JsonKey(name: "fullname") required this.fullName});

  factory _$RegisterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterResponseImplFromJson(json);

  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  final String email;
  @override
  @JsonKey(name: "fullname")
  final String fullName;

  @override
  String toString() {
    return 'RegisterResponse(phoneNumber: $phoneNumber, email: $email, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterResponseImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, email, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterResponseImplCopyWith<_$RegisterResponseImpl> get copyWith =>
      __$$RegisterResponseImplCopyWithImpl<_$RegisterResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterResponseImplToJson(
      this,
    );
  }
}

abstract class _RegisterResponse implements RegisterResponse {
  const factory _RegisterResponse(
          {@JsonKey(name: "phone_number") required final String phoneNumber,
          required final String email,
          @JsonKey(name: "fullname") required final String fullName}) =
      _$RegisterResponseImpl;

  factory _RegisterResponse.fromJson(Map<String, dynamic> json) =
      _$RegisterResponseImpl.fromJson;

  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  String get email;
  @override
  @JsonKey(name: "fullname")
  String get fullName;
  @override
  @JsonKey(ignore: true)
  _$$RegisterResponseImplCopyWith<_$RegisterResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
