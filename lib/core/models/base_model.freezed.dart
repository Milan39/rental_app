// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasePaginationModel _$BasePaginationModelFromJson(Map<String, dynamic> json) {
  return _BasePaginationModel.fromJson(json);
}

/// @nodoc
mixin _$BasePaginationModel {
  String get next => throw _privateConstructorUsedError;
  String get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasePaginationModelCopyWith<BasePaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePaginationModelCopyWith<$Res> {
  factory $BasePaginationModelCopyWith(
          BasePaginationModel value, $Res Function(BasePaginationModel) then) =
      _$BasePaginationModelCopyWithImpl<$Res, BasePaginationModel>;
  @useResult
  $Res call({String next, String previous});
}

/// @nodoc
class _$BasePaginationModelCopyWithImpl<$Res, $Val extends BasePaginationModel>
    implements $BasePaginationModelCopyWith<$Res> {
  _$BasePaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = null,
    Object? previous = null,
  }) {
    return _then(_value.copyWith(
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: null == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasePaginationModelImplCopyWith<$Res>
    implements $BasePaginationModelCopyWith<$Res> {
  factory _$$BasePaginationModelImplCopyWith(_$BasePaginationModelImpl value,
          $Res Function(_$BasePaginationModelImpl) then) =
      __$$BasePaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String next, String previous});
}

/// @nodoc
class __$$BasePaginationModelImplCopyWithImpl<$Res>
    extends _$BasePaginationModelCopyWithImpl<$Res, _$BasePaginationModelImpl>
    implements _$$BasePaginationModelImplCopyWith<$Res> {
  __$$BasePaginationModelImplCopyWithImpl(_$BasePaginationModelImpl _value,
      $Res Function(_$BasePaginationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = null,
    Object? previous = null,
  }) {
    return _then(_$BasePaginationModelImpl(
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: null == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasePaginationModelImpl implements _BasePaginationModel {
  const _$BasePaginationModelImpl({required this.next, required this.previous});

  factory _$BasePaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasePaginationModelImplFromJson(json);

  @override
  final String next;
  @override
  final String previous;

  @override
  String toString() {
    return 'BasePaginationModel(next: $next, previous: $previous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasePaginationModelImpl &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, next, previous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasePaginationModelImplCopyWith<_$BasePaginationModelImpl> get copyWith =>
      __$$BasePaginationModelImplCopyWithImpl<_$BasePaginationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasePaginationModelImplToJson(
      this,
    );
  }
}

abstract class _BasePaginationModel implements BasePaginationModel {
  const factory _BasePaginationModel(
      {required final String next,
      required final String previous}) = _$BasePaginationModelImpl;

  factory _BasePaginationModel.fromJson(Map<String, dynamic> json) =
      _$BasePaginationModelImpl.fromJson;

  @override
  String get next;
  @override
  String get previous;
  @override
  @JsonKey(ignore: true)
  _$$BasePaginationModelImplCopyWith<_$BasePaginationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
