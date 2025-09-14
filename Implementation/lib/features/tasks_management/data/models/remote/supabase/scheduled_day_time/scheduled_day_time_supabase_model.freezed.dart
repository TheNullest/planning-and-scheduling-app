// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_day_time_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduledDayTimeSupabaseModel _$ScheduledDayTimeSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _ScheduledDayTimeSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduledDayTimeSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_constraint_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_type')
  String get dayType => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_label')
  String get dayLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'repeat_count')
  int get repeatCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_mode')
  String get timeMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  int get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  int get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ScheduledDayTimeSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduledDayTimeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduledDayTimeSupabaseModelCopyWith<ScheduledDayTimeSupabaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledDayTimeSupabaseModelCopyWith<$Res> {
  factory $ScheduledDayTimeSupabaseModelCopyWith(
          ScheduledDayTimeSupabaseModel value,
          $Res Function(ScheduledDayTimeSupabaseModel) then) =
      _$ScheduledDayTimeSupabaseModelCopyWithImpl<$Res,
          ScheduledDayTimeSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'schedule_constraint_id') String taskId,
      @JsonKey(name: 'day_type') String dayType,
      @JsonKey(name: 'day_label') String dayLabel,
      @JsonKey(name: 'repeat_count') int repeatCount,
      @JsonKey(name: 'time_mode') String timeMode,
      @JsonKey(name: 'start_time') int startTime,
      @JsonKey(name: 'end_time') int endTime,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class _$ScheduledDayTimeSupabaseModelCopyWithImpl<$Res,
        $Val extends ScheduledDayTimeSupabaseModel>
    implements $ScheduledDayTimeSupabaseModelCopyWith<$Res> {
  _$ScheduledDayTimeSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduledDayTimeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? taskId = null,
    Object? dayType = null,
    Object? dayLabel = null,
    Object? repeatCount = null,
    Object? timeMode = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as String,
      dayLabel: null == dayLabel
          ? _value.dayLabel
          : dayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      repeatCount: null == repeatCount
          ? _value.repeatCount
          : repeatCount // ignore: cast_nullable_to_non_nullable
              as int,
      timeMode: null == timeMode
          ? _value.timeMode
          : timeMode // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$ScheduledDayTimeSupabaseModelImplCopyWith<$Res>
    implements $ScheduledDayTimeSupabaseModelCopyWith<$Res> {
  factory _$$ScheduledDayTimeSupabaseModelImplCopyWith(
          _$ScheduledDayTimeSupabaseModelImpl value,
          $Res Function(_$ScheduledDayTimeSupabaseModelImpl) then) =
      __$$ScheduledDayTimeSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'schedule_constraint_id') String taskId,
      @JsonKey(name: 'day_type') String dayType,
      @JsonKey(name: 'day_label') String dayLabel,
      @JsonKey(name: 'repeat_count') int repeatCount,
      @JsonKey(name: 'time_mode') String timeMode,
      @JsonKey(name: 'start_time') int startTime,
      @JsonKey(name: 'end_time') int endTime,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class __$$ScheduledDayTimeSupabaseModelImplCopyWithImpl<$Res>
    extends _$ScheduledDayTimeSupabaseModelCopyWithImpl<$Res,
        _$ScheduledDayTimeSupabaseModelImpl>
    implements _$$ScheduledDayTimeSupabaseModelImplCopyWith<$Res> {
  __$$ScheduledDayTimeSupabaseModelImplCopyWithImpl(
      _$ScheduledDayTimeSupabaseModelImpl _value,
      $Res Function(_$ScheduledDayTimeSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledDayTimeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? taskId = null,
    Object? dayType = null,
    Object? dayLabel = null,
    Object? repeatCount = null,
    Object? timeMode = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ScheduledDayTimeSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as String,
      dayLabel: null == dayLabel
          ? _value.dayLabel
          : dayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      repeatCount: null == repeatCount
          ? _value.repeatCount
          : repeatCount // ignore: cast_nullable_to_non_nullable
              as int,
      timeMode: null == timeMode
          ? _value.timeMode
          : timeMode // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$ScheduledDayTimeSupabaseModelImpl
    implements _ScheduledDayTimeSupabaseModel {
  const _$ScheduledDayTimeSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'schedule_constraint_id') required this.taskId,
      @JsonKey(name: 'day_type') required this.dayType,
      @JsonKey(name: 'day_label') required this.dayLabel,
      @JsonKey(name: 'repeat_count') required this.repeatCount,
      @JsonKey(name: 'time_mode') required this.timeMode,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description});

  factory _$ScheduledDayTimeSupabaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScheduledDayTimeSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'schedule_constraint_id')
  final String taskId;
  @override
  @JsonKey(name: 'day_type')
  final String dayType;
  @override
  @JsonKey(name: 'day_label')
  final String dayLabel;
  @override
  @JsonKey(name: 'repeat_count')
  final int repeatCount;
  @override
  @JsonKey(name: 'time_mode')
  final String timeMode;
  @override
  @JsonKey(name: 'start_time')
  final int startTime;
  @override
  @JsonKey(name: 'end_time')
  final int endTime;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'ScheduledDayTimeSupabaseModel(id: $id, userId: $userId, createdAt: $createdAt, taskId: $taskId, dayType: $dayType, dayLabel: $dayLabel, repeatCount: $repeatCount, timeMode: $timeMode, startTime: $startTime, endTime: $endTime, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledDayTimeSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.dayType, dayType) || other.dayType == dayType) &&
            (identical(other.dayLabel, dayLabel) ||
                other.dayLabel == dayLabel) &&
            (identical(other.repeatCount, repeatCount) ||
                other.repeatCount == repeatCount) &&
            (identical(other.timeMode, timeMode) ||
                other.timeMode == timeMode) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      createdAt,
      taskId,
      dayType,
      dayLabel,
      repeatCount,
      timeMode,
      startTime,
      endTime,
      updatedAt,
      description);

  /// Create a copy of ScheduledDayTimeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledDayTimeSupabaseModelImplCopyWith<
          _$ScheduledDayTimeSupabaseModelImpl>
      get copyWith => __$$ScheduledDayTimeSupabaseModelImplCopyWithImpl<
          _$ScheduledDayTimeSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduledDayTimeSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduledDayTimeSupabaseModel
    implements ScheduledDayTimeSupabaseModel {
  const factory _ScheduledDayTimeSupabaseModel(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'schedule_constraint_id') required final String taskId,
      @JsonKey(name: 'day_type') required final String dayType,
      @JsonKey(name: 'day_label') required final String dayLabel,
      @JsonKey(name: 'repeat_count') required final int repeatCount,
      @JsonKey(name: 'time_mode') required final String timeMode,
      @JsonKey(name: 'start_time') required final int startTime,
      @JsonKey(name: 'end_time') required final int endTime,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? description}) = _$ScheduledDayTimeSupabaseModelImpl;

  factory _ScheduledDayTimeSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$ScheduledDayTimeSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'schedule_constraint_id')
  String get taskId;
  @override
  @JsonKey(name: 'day_type')
  String get dayType;
  @override
  @JsonKey(name: 'day_label')
  String get dayLabel;
  @override
  @JsonKey(name: 'repeat_count')
  int get repeatCount;
  @override
  @JsonKey(name: 'time_mode')
  String get timeMode;
  @override
  @JsonKey(name: 'start_time')
  int get startTime;
  @override
  @JsonKey(name: 'end_time')
  int get endTime;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get description;

  /// Create a copy of ScheduledDayTimeSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduledDayTimeSupabaseModelImplCopyWith<
          _$ScheduledDayTimeSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
