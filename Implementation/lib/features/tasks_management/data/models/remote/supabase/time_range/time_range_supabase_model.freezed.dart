// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_range_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeRangeSupabaseModel _$TimeRangeSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _TimeRangeSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$TimeRangeSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  int get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  int get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TimeRangeSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeRangeSupabaseModelCopyWith<TimeRangeSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeRangeSupabaseModelCopyWith<$Res> {
  factory $TimeRangeSupabaseModelCopyWith(TimeRangeSupabaseModel value,
          $Res Function(TimeRangeSupabaseModel) then) =
      _$TimeRangeSupabaseModelCopyWithImpl<$Res, TimeRangeSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'parent_id') String parentId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'start_time') int start,
      @JsonKey(name: 'end_time') int end,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$TimeRangeSupabaseModelCopyWithImpl<$Res,
        $Val extends TimeRangeSupabaseModel>
    implements $TimeRangeSupabaseModelCopyWith<$Res> {
  _$TimeRangeSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? start = null,
    Object? end = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeRangeSupabaseModelImplCopyWith<$Res>
    implements $TimeRangeSupabaseModelCopyWith<$Res> {
  factory _$$TimeRangeSupabaseModelImplCopyWith(
          _$TimeRangeSupabaseModelImpl value,
          $Res Function(_$TimeRangeSupabaseModelImpl) then) =
      __$$TimeRangeSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'parent_id') String parentId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'start_time') int start,
      @JsonKey(name: 'end_time') int end,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$TimeRangeSupabaseModelImplCopyWithImpl<$Res>
    extends _$TimeRangeSupabaseModelCopyWithImpl<$Res,
        _$TimeRangeSupabaseModelImpl>
    implements _$$TimeRangeSupabaseModelImplCopyWith<$Res> {
  __$$TimeRangeSupabaseModelImplCopyWithImpl(
      _$TimeRangeSupabaseModelImpl _value,
      $Res Function(_$TimeRangeSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? start = null,
    Object? end = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TimeRangeSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeRangeSupabaseModelImpl implements _TimeRangeSupabaseModel {
  const _$TimeRangeSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'parent_id') required this.parentId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'start_time') required this.start,
      @JsonKey(name: 'end_time') required this.end,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$TimeRangeSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeRangeSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'parent_id')
  final String parentId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'start_time')
  final int start;
  @override
  @JsonKey(name: 'end_time')
  final int end;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TimeRangeSupabaseModel(id: $id, parentId: $parentId, userId: $userId, createdAt: $createdAt, start: $start, end: $end, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeRangeSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, parentId, userId, createdAt, start, end, updatedAt);

  /// Create a copy of TimeRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeRangeSupabaseModelImplCopyWith<_$TimeRangeSupabaseModelImpl>
      get copyWith => __$$TimeRangeSupabaseModelImplCopyWithImpl<
          _$TimeRangeSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeRangeSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _TimeRangeSupabaseModel implements TimeRangeSupabaseModel {
  const factory _TimeRangeSupabaseModel(
          {required final String id,
          @JsonKey(name: 'parent_id') required final String parentId,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'start_time') required final int start,
          @JsonKey(name: 'end_time') required final int end,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$TimeRangeSupabaseModelImpl;

  factory _TimeRangeSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$TimeRangeSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'parent_id')
  String get parentId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'start_time')
  int get start;
  @override
  @JsonKey(name: 'end_time')
  int get end;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of TimeRangeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeRangeSupabaseModelImplCopyWith<_$TimeRangeSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
