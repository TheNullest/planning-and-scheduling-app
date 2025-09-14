// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_interval_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduledIntervalSupabaseModel _$ScheduledIntervalSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _ScheduledIntervalSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduledIntervalSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_constraint_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'interval_unit')
  String get intervalUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'interval_value')
  double get intervalValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'consecutive_occurrences')
  int get consecutiveOccurrences => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_time_ids')
  List<String> get scheduledTimeIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'repeat_count')
  int? get repeatCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ScheduledIntervalSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduledIntervalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduledIntervalSupabaseModelCopyWith<ScheduledIntervalSupabaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledIntervalSupabaseModelCopyWith<$Res> {
  factory $ScheduledIntervalSupabaseModelCopyWith(
          ScheduledIntervalSupabaseModel value,
          $Res Function(ScheduledIntervalSupabaseModel) then) =
      _$ScheduledIntervalSupabaseModelCopyWithImpl<$Res,
          ScheduledIntervalSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'start_time') DateTime startTime,
      @JsonKey(name: 'schedule_constraint_id') String taskId,
      @JsonKey(name: 'interval_unit') String intervalUnit,
      @JsonKey(name: 'interval_value') double intervalValue,
      @JsonKey(name: 'consecutive_occurrences') int consecutiveOccurrences,
      @JsonKey(name: 'scheduled_time_ids') List<String> scheduledTimeIds,
      @JsonKey(name: 'repeat_count') int? repeatCount,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class _$ScheduledIntervalSupabaseModelCopyWithImpl<$Res,
        $Val extends ScheduledIntervalSupabaseModel>
    implements $ScheduledIntervalSupabaseModelCopyWith<$Res> {
  _$ScheduledIntervalSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduledIntervalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? startTime = null,
    Object? taskId = null,
    Object? intervalUnit = null,
    Object? intervalValue = null,
    Object? consecutiveOccurrences = null,
    Object? scheduledTimeIds = null,
    Object? repeatCount = freezed,
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
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      intervalUnit: null == intervalUnit
          ? _value.intervalUnit
          : intervalUnit // ignore: cast_nullable_to_non_nullable
              as String,
      intervalValue: null == intervalValue
          ? _value.intervalValue
          : intervalValue // ignore: cast_nullable_to_non_nullable
              as double,
      consecutiveOccurrences: null == consecutiveOccurrences
          ? _value.consecutiveOccurrences
          : consecutiveOccurrences // ignore: cast_nullable_to_non_nullable
              as int,
      scheduledTimeIds: null == scheduledTimeIds
          ? _value.scheduledTimeIds
          : scheduledTimeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      repeatCount: freezed == repeatCount
          ? _value.repeatCount
          : repeatCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$ScheduledIntervalSupabaseModelImplCopyWith<$Res>
    implements $ScheduledIntervalSupabaseModelCopyWith<$Res> {
  factory _$$ScheduledIntervalSupabaseModelImplCopyWith(
          _$ScheduledIntervalSupabaseModelImpl value,
          $Res Function(_$ScheduledIntervalSupabaseModelImpl) then) =
      __$$ScheduledIntervalSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'start_time') DateTime startTime,
      @JsonKey(name: 'schedule_constraint_id') String taskId,
      @JsonKey(name: 'interval_unit') String intervalUnit,
      @JsonKey(name: 'interval_value') double intervalValue,
      @JsonKey(name: 'consecutive_occurrences') int consecutiveOccurrences,
      @JsonKey(name: 'scheduled_time_ids') List<String> scheduledTimeIds,
      @JsonKey(name: 'repeat_count') int? repeatCount,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class __$$ScheduledIntervalSupabaseModelImplCopyWithImpl<$Res>
    extends _$ScheduledIntervalSupabaseModelCopyWithImpl<$Res,
        _$ScheduledIntervalSupabaseModelImpl>
    implements _$$ScheduledIntervalSupabaseModelImplCopyWith<$Res> {
  __$$ScheduledIntervalSupabaseModelImplCopyWithImpl(
      _$ScheduledIntervalSupabaseModelImpl _value,
      $Res Function(_$ScheduledIntervalSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledIntervalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? startTime = null,
    Object? taskId = null,
    Object? intervalUnit = null,
    Object? intervalValue = null,
    Object? consecutiveOccurrences = null,
    Object? scheduledTimeIds = null,
    Object? repeatCount = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ScheduledIntervalSupabaseModelImpl(
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
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      intervalUnit: null == intervalUnit
          ? _value.intervalUnit
          : intervalUnit // ignore: cast_nullable_to_non_nullable
              as String,
      intervalValue: null == intervalValue
          ? _value.intervalValue
          : intervalValue // ignore: cast_nullable_to_non_nullable
              as double,
      consecutiveOccurrences: null == consecutiveOccurrences
          ? _value.consecutiveOccurrences
          : consecutiveOccurrences // ignore: cast_nullable_to_non_nullable
              as int,
      scheduledTimeIds: null == scheduledTimeIds
          ? _value._scheduledTimeIds
          : scheduledTimeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      repeatCount: freezed == repeatCount
          ? _value.repeatCount
          : repeatCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$ScheduledIntervalSupabaseModelImpl
    implements _ScheduledIntervalSupabaseModel {
  const _$ScheduledIntervalSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'schedule_constraint_id') required this.taskId,
      @JsonKey(name: 'interval_unit') required this.intervalUnit,
      @JsonKey(name: 'interval_value') required this.intervalValue,
      @JsonKey(name: 'consecutive_occurrences')
      required this.consecutiveOccurrences,
      @JsonKey(name: 'scheduled_time_ids')
      required final List<String> scheduledTimeIds,
      @JsonKey(name: 'repeat_count') this.repeatCount,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description})
      : _scheduledTimeIds = scheduledTimeIds;

  factory _$ScheduledIntervalSupabaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScheduledIntervalSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'schedule_constraint_id')
  final String taskId;
  @override
  @JsonKey(name: 'interval_unit')
  final String intervalUnit;
  @override
  @JsonKey(name: 'interval_value')
  final double intervalValue;
  @override
  @JsonKey(name: 'consecutive_occurrences')
  final int consecutiveOccurrences;
  final List<String> _scheduledTimeIds;
  @override
  @JsonKey(name: 'scheduled_time_ids')
  List<String> get scheduledTimeIds {
    if (_scheduledTimeIds is EqualUnmodifiableListView)
      return _scheduledTimeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduledTimeIds);
  }

  @override
  @JsonKey(name: 'repeat_count')
  final int? repeatCount;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'ScheduledIntervalSupabaseModel(id: $id, userId: $userId, createdAt: $createdAt, startTime: $startTime, taskId: $taskId, intervalUnit: $intervalUnit, intervalValue: $intervalValue, consecutiveOccurrences: $consecutiveOccurrences, scheduledTimeIds: $scheduledTimeIds, repeatCount: $repeatCount, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledIntervalSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.intervalUnit, intervalUnit) ||
                other.intervalUnit == intervalUnit) &&
            (identical(other.intervalValue, intervalValue) ||
                other.intervalValue == intervalValue) &&
            (identical(other.consecutiveOccurrences, consecutiveOccurrences) ||
                other.consecutiveOccurrences == consecutiveOccurrences) &&
            const DeepCollectionEquality()
                .equals(other._scheduledTimeIds, _scheduledTimeIds) &&
            (identical(other.repeatCount, repeatCount) ||
                other.repeatCount == repeatCount) &&
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
      startTime,
      taskId,
      intervalUnit,
      intervalValue,
      consecutiveOccurrences,
      const DeepCollectionEquality().hash(_scheduledTimeIds),
      repeatCount,
      updatedAt,
      description);

  /// Create a copy of ScheduledIntervalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledIntervalSupabaseModelImplCopyWith<
          _$ScheduledIntervalSupabaseModelImpl>
      get copyWith => __$$ScheduledIntervalSupabaseModelImplCopyWithImpl<
          _$ScheduledIntervalSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduledIntervalSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduledIntervalSupabaseModel
    implements ScheduledIntervalSupabaseModel {
  const factory _ScheduledIntervalSupabaseModel(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'start_time') required final DateTime startTime,
      @JsonKey(name: 'schedule_constraint_id') required final String taskId,
      @JsonKey(name: 'interval_unit') required final String intervalUnit,
      @JsonKey(name: 'interval_value') required final double intervalValue,
      @JsonKey(name: 'consecutive_occurrences')
      required final int consecutiveOccurrences,
      @JsonKey(name: 'scheduled_time_ids')
      required final List<String> scheduledTimeIds,
      @JsonKey(name: 'repeat_count') final int? repeatCount,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? description}) = _$ScheduledIntervalSupabaseModelImpl;

  factory _ScheduledIntervalSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$ScheduledIntervalSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'start_time')
  DateTime get startTime;
  @override
  @JsonKey(name: 'schedule_constraint_id')
  String get taskId;
  @override
  @JsonKey(name: 'interval_unit')
  String get intervalUnit;
  @override
  @JsonKey(name: 'interval_value')
  double get intervalValue;
  @override
  @JsonKey(name: 'consecutive_occurrences')
  int get consecutiveOccurrences;
  @override
  @JsonKey(name: 'scheduled_time_ids')
  List<String> get scheduledTimeIds;
  @override
  @JsonKey(name: 'repeat_count')
  int? get repeatCount;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get description;

  /// Create a copy of ScheduledIntervalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduledIntervalSupabaseModelImplCopyWith<
          _$ScheduledIntervalSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
