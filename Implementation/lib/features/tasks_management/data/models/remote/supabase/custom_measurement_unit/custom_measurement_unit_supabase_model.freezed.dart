// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_measurement_unit_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomMeasurementUnitSupabaseModel _$CustomMeasurementUnitSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _CustomMeasurementUnitSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$CustomMeasurementUnitSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_code')
  int get iconCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_double', defaultValue: false)
  bool get isDouble => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CustomMeasurementUnitSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomMeasurementUnitSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomMeasurementUnitSupabaseModelCopyWith<
          CustomMeasurementUnitSupabaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomMeasurementUnitSupabaseModelCopyWith<$Res> {
  factory $CustomMeasurementUnitSupabaseModelCopyWith(
          CustomMeasurementUnitSupabaseModel value,
          $Res Function(CustomMeasurementUnitSupabaseModel) then) =
      _$CustomMeasurementUnitSupabaseModelCopyWithImpl<$Res,
          CustomMeasurementUnitSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'icon_code') int iconCode,
      @JsonKey(name: 'is_double', defaultValue: false) bool isDouble,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class _$CustomMeasurementUnitSupabaseModelCopyWithImpl<$Res,
        $Val extends CustomMeasurementUnitSupabaseModel>
    implements $CustomMeasurementUnitSupabaseModelCopyWith<$Res> {
  _$CustomMeasurementUnitSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomMeasurementUnitSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? iconCode = null,
    Object? isDouble = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as int,
      isDouble: null == isDouble
          ? _value.isDouble
          : isDouble // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomMeasurementUnitSupabaseModelImplCopyWith<$Res>
    implements $CustomMeasurementUnitSupabaseModelCopyWith<$Res> {
  factory _$$CustomMeasurementUnitSupabaseModelImplCopyWith(
          _$CustomMeasurementUnitSupabaseModelImpl value,
          $Res Function(_$CustomMeasurementUnitSupabaseModelImpl) then) =
      __$$CustomMeasurementUnitSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'icon_code') int iconCode,
      @JsonKey(name: 'is_double', defaultValue: false) bool isDouble,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class __$$CustomMeasurementUnitSupabaseModelImplCopyWithImpl<$Res>
    extends _$CustomMeasurementUnitSupabaseModelCopyWithImpl<$Res,
        _$CustomMeasurementUnitSupabaseModelImpl>
    implements _$$CustomMeasurementUnitSupabaseModelImplCopyWith<$Res> {
  __$$CustomMeasurementUnitSupabaseModelImplCopyWithImpl(
      _$CustomMeasurementUnitSupabaseModelImpl _value,
      $Res Function(_$CustomMeasurementUnitSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomMeasurementUnitSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? iconCode = null,
    Object? isDouble = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_$CustomMeasurementUnitSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as int,
      isDouble: null == isDouble
          ? _value.isDouble
          : isDouble // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomMeasurementUnitSupabaseModelImpl
    implements _CustomMeasurementUnitSupabaseModel {
  const _$CustomMeasurementUnitSupabaseModelImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'icon_code') required this.iconCode,
      @JsonKey(name: 'is_double', defaultValue: false) required this.isDouble,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description});

  factory _$CustomMeasurementUnitSupabaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CustomMeasurementUnitSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'icon_code')
  final int iconCode;
  @override
  @JsonKey(name: 'is_double', defaultValue: false)
  final bool isDouble;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'CustomMeasurementUnitSupabaseModel(id: $id, title: $title, iconCode: $iconCode, isDouble: $isDouble, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomMeasurementUnitSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.iconCode, iconCode) ||
                other.iconCode == iconCode) &&
            (identical(other.isDouble, isDouble) ||
                other.isDouble == isDouble) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, iconCode, isDouble,
      userId, createdAt, updatedAt, description);

  /// Create a copy of CustomMeasurementUnitSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomMeasurementUnitSupabaseModelImplCopyWith<
          _$CustomMeasurementUnitSupabaseModelImpl>
      get copyWith => __$$CustomMeasurementUnitSupabaseModelImplCopyWithImpl<
          _$CustomMeasurementUnitSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomMeasurementUnitSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _CustomMeasurementUnitSupabaseModel
    implements CustomMeasurementUnitSupabaseModel {
  const factory _CustomMeasurementUnitSupabaseModel(
      {required final String id,
      required final String title,
      @JsonKey(name: 'icon_code') required final int iconCode,
      @JsonKey(name: 'is_double', defaultValue: false)
      required final bool isDouble,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? description}) = _$CustomMeasurementUnitSupabaseModelImpl;

  factory _CustomMeasurementUnitSupabaseModel.fromJson(
          Map<String, dynamic> json) =
      _$CustomMeasurementUnitSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'icon_code')
  int get iconCode;
  @override
  @JsonKey(name: 'is_double', defaultValue: false)
  bool get isDouble;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get description;

  /// Create a copy of CustomMeasurementUnitSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomMeasurementUnitSupabaseModelImplCopyWith<
          _$CustomMeasurementUnitSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
