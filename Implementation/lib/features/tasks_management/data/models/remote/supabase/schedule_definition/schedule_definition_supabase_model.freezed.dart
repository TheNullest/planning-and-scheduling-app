// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_definition_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleDefinitionSupabaseModel _$ScheduleDefinitionSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _ScheduleDefinitionSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDefinitionSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'repetition_type')
  String get repetitionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'month_days')
  List<int> get monthDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'week_days')
  List<String> get weekDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'repeat_count')
  int get repeatCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_times')
  List<String> get scheduledTimes => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_days')
  List<String> get scheduledDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_intervals')
  List<String> get scheduledIntervals => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_date_range')
  String? get scheduledDateRange => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ScheduleDefinitionSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleDefinitionSupabaseModelCopyWith<ScheduleDefinitionSupabaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDefinitionSupabaseModelCopyWith<$Res> {
  factory $ScheduleDefinitionSupabaseModelCopyWith(
          ScheduleDefinitionSupabaseModel value,
          $Res Function(ScheduleDefinitionSupabaseModel) then) =
      _$ScheduleDefinitionSupabaseModelCopyWithImpl<$Res,
          ScheduleDefinitionSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'repetition_type') String repetitionType,
      @JsonKey(name: 'month_days') List<int> monthDays,
      @JsonKey(name: 'week_days') List<String> weekDays,
      @JsonKey(name: 'repeat_count') int repeatCount,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'scheduled_times') List<String> scheduledTimes,
      @JsonKey(name: 'scheduled_days') List<String> scheduledDays,
      @JsonKey(name: 'scheduled_intervals') List<String> scheduledIntervals,
      @JsonKey(name: 'scheduled_date_range') String? scheduledDateRange,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class _$ScheduleDefinitionSupabaseModelCopyWithImpl<$Res,
        $Val extends ScheduleDefinitionSupabaseModel>
    implements $ScheduleDefinitionSupabaseModelCopyWith<$Res> {
  _$ScheduleDefinitionSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? repetitionType = null,
    Object? monthDays = null,
    Object? weekDays = null,
    Object? repeatCount = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? scheduledTimes = null,
    Object? scheduledDays = null,
    Object? scheduledIntervals = null,
    Object? scheduledDateRange = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      repetitionType: null == repetitionType
          ? _value.repetitionType
          : repetitionType // ignore: cast_nullable_to_non_nullable
              as String,
      monthDays: null == monthDays
          ? _value.monthDays
          : monthDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      weekDays: null == weekDays
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      repeatCount: null == repeatCount
          ? _value.repeatCount
          : repeatCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledTimes: null == scheduledTimes
          ? _value.scheduledTimes
          : scheduledTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      scheduledDays: null == scheduledDays
          ? _value.scheduledDays
          : scheduledDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      scheduledIntervals: null == scheduledIntervals
          ? _value.scheduledIntervals
          : scheduledIntervals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      scheduledDateRange: freezed == scheduledDateRange
          ? _value.scheduledDateRange
          : scheduledDateRange // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ScheduleDefinitionSupabaseModelImplCopyWith<$Res>
    implements $ScheduleDefinitionSupabaseModelCopyWith<$Res> {
  factory _$$ScheduleDefinitionSupabaseModelImplCopyWith(
          _$ScheduleDefinitionSupabaseModelImpl value,
          $Res Function(_$ScheduleDefinitionSupabaseModelImpl) then) =
      __$$ScheduleDefinitionSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'repetition_type') String repetitionType,
      @JsonKey(name: 'month_days') List<int> monthDays,
      @JsonKey(name: 'week_days') List<String> weekDays,
      @JsonKey(name: 'repeat_count') int repeatCount,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'scheduled_times') List<String> scheduledTimes,
      @JsonKey(name: 'scheduled_days') List<String> scheduledDays,
      @JsonKey(name: 'scheduled_intervals') List<String> scheduledIntervals,
      @JsonKey(name: 'scheduled_date_range') String? scheduledDateRange,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class __$$ScheduleDefinitionSupabaseModelImplCopyWithImpl<$Res>
    extends _$ScheduleDefinitionSupabaseModelCopyWithImpl<$Res,
        _$ScheduleDefinitionSupabaseModelImpl>
    implements _$$ScheduleDefinitionSupabaseModelImplCopyWith<$Res> {
  __$$ScheduleDefinitionSupabaseModelImplCopyWithImpl(
      _$ScheduleDefinitionSupabaseModelImpl _value,
      $Res Function(_$ScheduleDefinitionSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? repetitionType = null,
    Object? monthDays = null,
    Object? weekDays = null,
    Object? repeatCount = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? scheduledTimes = null,
    Object? scheduledDays = null,
    Object? scheduledIntervals = null,
    Object? scheduledDateRange = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ScheduleDefinitionSupabaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      repetitionType: null == repetitionType
          ? _value.repetitionType
          : repetitionType // ignore: cast_nullable_to_non_nullable
              as String,
      monthDays: null == monthDays
          ? _value._monthDays
          : monthDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      weekDays: null == weekDays
          ? _value._weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      repeatCount: null == repeatCount
          ? _value.repeatCount
          : repeatCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduledTimes: null == scheduledTimes
          ? _value._scheduledTimes
          : scheduledTimes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      scheduledDays: null == scheduledDays
          ? _value._scheduledDays
          : scheduledDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      scheduledIntervals: null == scheduledIntervals
          ? _value._scheduledIntervals
          : scheduledIntervals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      scheduledDateRange: freezed == scheduledDateRange
          ? _value.scheduledDateRange
          : scheduledDateRange // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ScheduleDefinitionSupabaseModelImpl
    implements _ScheduleDefinitionSupabaseModel {
  const _$ScheduleDefinitionSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'task_id') required this.taskId,
      @JsonKey(name: 'repetition_type') required this.repetitionType,
      @JsonKey(name: 'month_days') required final List<int> monthDays,
      @JsonKey(name: 'week_days') required final List<String> weekDays,
      @JsonKey(name: 'repeat_count') required this.repeatCount,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'scheduled_times')
      required final List<String> scheduledTimes,
      @JsonKey(name: 'scheduled_days')
      required final List<String> scheduledDays,
      @JsonKey(name: 'scheduled_intervals')
      required final List<String> scheduledIntervals,
      @JsonKey(name: 'scheduled_date_range') this.scheduledDateRange,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description})
      : _monthDays = monthDays,
        _weekDays = weekDays,
        _scheduledTimes = scheduledTimes,
        _scheduledDays = scheduledDays,
        _scheduledIntervals = scheduledIntervals;

  factory _$ScheduleDefinitionSupabaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScheduleDefinitionSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'task_id')
  final String taskId;
  @override
  @JsonKey(name: 'repetition_type')
  final String repetitionType;
  final List<int> _monthDays;
  @override
  @JsonKey(name: 'month_days')
  List<int> get monthDays {
    if (_monthDays is EqualUnmodifiableListView) return _monthDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthDays);
  }

  final List<String> _weekDays;
  @override
  @JsonKey(name: 'week_days')
  List<String> get weekDays {
    if (_weekDays is EqualUnmodifiableListView) return _weekDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekDays);
  }

  @override
  @JsonKey(name: 'repeat_count')
  final int repeatCount;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final List<String> _scheduledTimes;
  @override
  @JsonKey(name: 'scheduled_times')
  List<String> get scheduledTimes {
    if (_scheduledTimes is EqualUnmodifiableListView) return _scheduledTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduledTimes);
  }

  final List<String> _scheduledDays;
  @override
  @JsonKey(name: 'scheduled_days')
  List<String> get scheduledDays {
    if (_scheduledDays is EqualUnmodifiableListView) return _scheduledDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduledDays);
  }

  final List<String> _scheduledIntervals;
  @override
  @JsonKey(name: 'scheduled_intervals')
  List<String> get scheduledIntervals {
    if (_scheduledIntervals is EqualUnmodifiableListView)
      return _scheduledIntervals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduledIntervals);
  }

  @override
  @JsonKey(name: 'scheduled_date_range')
  final String? scheduledDateRange;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'ScheduleDefinitionSupabaseModel(id: $id, taskId: $taskId, repetitionType: $repetitionType, monthDays: $monthDays, weekDays: $weekDays, repeatCount: $repeatCount, userId: $userId, createdAt: $createdAt, scheduledTimes: $scheduledTimes, scheduledDays: $scheduledDays, scheduledIntervals: $scheduledIntervals, scheduledDateRange: $scheduledDateRange, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDefinitionSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.repetitionType, repetitionType) ||
                other.repetitionType == repetitionType) &&
            const DeepCollectionEquality()
                .equals(other._monthDays, _monthDays) &&
            const DeepCollectionEquality().equals(other._weekDays, _weekDays) &&
            (identical(other.repeatCount, repeatCount) ||
                other.repeatCount == repeatCount) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._scheduledTimes, _scheduledTimes) &&
            const DeepCollectionEquality()
                .equals(other._scheduledDays, _scheduledDays) &&
            const DeepCollectionEquality()
                .equals(other._scheduledIntervals, _scheduledIntervals) &&
            (identical(other.scheduledDateRange, scheduledDateRange) ||
                other.scheduledDateRange == scheduledDateRange) &&
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
      taskId,
      repetitionType,
      const DeepCollectionEquality().hash(_monthDays),
      const DeepCollectionEquality().hash(_weekDays),
      repeatCount,
      userId,
      createdAt,
      const DeepCollectionEquality().hash(_scheduledTimes),
      const DeepCollectionEquality().hash(_scheduledDays),
      const DeepCollectionEquality().hash(_scheduledIntervals),
      scheduledDateRange,
      updatedAt,
      description);

  /// Create a copy of ScheduleDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDefinitionSupabaseModelImplCopyWith<
          _$ScheduleDefinitionSupabaseModelImpl>
      get copyWith => __$$ScheduleDefinitionSupabaseModelImplCopyWithImpl<
          _$ScheduleDefinitionSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleDefinitionSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduleDefinitionSupabaseModel
    implements ScheduleDefinitionSupabaseModel {
  const factory _ScheduleDefinitionSupabaseModel(
      {required final String id,
      @JsonKey(name: 'task_id') required final String taskId,
      @JsonKey(name: 'repetition_type') required final String repetitionType,
      @JsonKey(name: 'month_days') required final List<int> monthDays,
      @JsonKey(name: 'week_days') required final List<String> weekDays,
      @JsonKey(name: 'repeat_count') required final int repeatCount,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'scheduled_times')
      required final List<String> scheduledTimes,
      @JsonKey(name: 'scheduled_days')
      required final List<String> scheduledDays,
      @JsonKey(name: 'scheduled_intervals')
      required final List<String> scheduledIntervals,
      @JsonKey(name: 'scheduled_date_range') final String? scheduledDateRange,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? description}) = _$ScheduleDefinitionSupabaseModelImpl;

  factory _ScheduleDefinitionSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$ScheduleDefinitionSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'task_id')
  String get taskId;
  @override
  @JsonKey(name: 'repetition_type')
  String get repetitionType;
  @override
  @JsonKey(name: 'month_days')
  List<int> get monthDays;
  @override
  @JsonKey(name: 'week_days')
  List<String> get weekDays;
  @override
  @JsonKey(name: 'repeat_count')
  int get repeatCount;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'scheduled_times')
  List<String> get scheduledTimes;
  @override
  @JsonKey(name: 'scheduled_days')
  List<String> get scheduledDays;
  @override
  @JsonKey(name: 'scheduled_intervals')
  List<String> get scheduledIntervals;
  @override
  @JsonKey(name: 'scheduled_date_range')
  String? get scheduledDateRange;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get description;

  /// Create a copy of ScheduleDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleDefinitionSupabaseModelImplCopyWith<
          _$ScheduleDefinitionSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
