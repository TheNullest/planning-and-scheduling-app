// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_interval_definition_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduledIntervalDefinitionSupabaseModel
    _$ScheduledIntervalDefinitionSupabaseModelFromJson(
        Map<String, dynamic> json) {
  return _ScheduledIntervalDefinitionSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduledIntervalDefinitionSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_definition_id')
  String get scheduleDefinitionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'interval_unit')
  String get intervalUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'interval_value')
  double get intervalValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_time_ids')
  List<String> get scheduledTimeIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_exception_ids')
  List<String> get timeExceptionIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_exception_ids')
  List<String> get dateExceptionIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'enforce_schedule_bounds')
  bool get enforceScheduleBounds => throw _privateConstructorUsedError;
  @JsonKey(name: 'repeat_count')
  int? get repeatCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ScheduledIntervalDefinitionSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduledIntervalDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduledIntervalDefinitionSupabaseModelCopyWith<
          ScheduledIntervalDefinitionSupabaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledIntervalDefinitionSupabaseModelCopyWith<$Res> {
  factory $ScheduledIntervalDefinitionSupabaseModelCopyWith(
          ScheduledIntervalDefinitionSupabaseModel value,
          $Res Function(ScheduledIntervalDefinitionSupabaseModel) then) =
      _$ScheduledIntervalDefinitionSupabaseModelCopyWithImpl<$Res,
          ScheduledIntervalDefinitionSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'schedule_definition_id') String scheduleDefinitionId,
      @JsonKey(name: 'interval_unit') String intervalUnit,
      @JsonKey(name: 'interval_value') double intervalValue,
      @JsonKey(name: 'scheduled_time_ids') List<String> scheduledTimeIds,
      @JsonKey(name: 'time_exception_ids') List<String> timeExceptionIds,
      @JsonKey(name: 'date_exception_ids') List<String> dateExceptionIds,
      @JsonKey(name: 'enforce_schedule_bounds') bool enforceScheduleBounds,
      @JsonKey(name: 'repeat_count') int? repeatCount,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class _$ScheduledIntervalDefinitionSupabaseModelCopyWithImpl<$Res,
        $Val extends ScheduledIntervalDefinitionSupabaseModel>
    implements $ScheduledIntervalDefinitionSupabaseModelCopyWith<$Res> {
  _$ScheduledIntervalDefinitionSupabaseModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduledIntervalDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? scheduleDefinitionId = null,
    Object? intervalUnit = null,
    Object? intervalValue = null,
    Object? scheduledTimeIds = null,
    Object? timeExceptionIds = null,
    Object? dateExceptionIds = null,
    Object? enforceScheduleBounds = null,
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
      scheduleDefinitionId: null == scheduleDefinitionId
          ? _value.scheduleDefinitionId
          : scheduleDefinitionId // ignore: cast_nullable_to_non_nullable
              as String,
      intervalUnit: null == intervalUnit
          ? _value.intervalUnit
          : intervalUnit // ignore: cast_nullable_to_non_nullable
              as String,
      intervalValue: null == intervalValue
          ? _value.intervalValue
          : intervalValue // ignore: cast_nullable_to_non_nullable
              as double,
      scheduledTimeIds: null == scheduledTimeIds
          ? _value.scheduledTimeIds
          : scheduledTimeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeExceptionIds: null == timeExceptionIds
          ? _value.timeExceptionIds
          : timeExceptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateExceptionIds: null == dateExceptionIds
          ? _value.dateExceptionIds
          : dateExceptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      enforceScheduleBounds: null == enforceScheduleBounds
          ? _value.enforceScheduleBounds
          : enforceScheduleBounds // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$ScheduledIntervalDefinitionSupabaseModelImplCopyWith<$Res>
    implements $ScheduledIntervalDefinitionSupabaseModelCopyWith<$Res> {
  factory _$$ScheduledIntervalDefinitionSupabaseModelImplCopyWith(
          _$ScheduledIntervalDefinitionSupabaseModelImpl value,
          $Res Function(_$ScheduledIntervalDefinitionSupabaseModelImpl) then) =
      __$$ScheduledIntervalDefinitionSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'schedule_definition_id') String scheduleDefinitionId,
      @JsonKey(name: 'interval_unit') String intervalUnit,
      @JsonKey(name: 'interval_value') double intervalValue,
      @JsonKey(name: 'scheduled_time_ids') List<String> scheduledTimeIds,
      @JsonKey(name: 'time_exception_ids') List<String> timeExceptionIds,
      @JsonKey(name: 'date_exception_ids') List<String> dateExceptionIds,
      @JsonKey(name: 'enforce_schedule_bounds') bool enforceScheduleBounds,
      @JsonKey(name: 'repeat_count') int? repeatCount,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class __$$ScheduledIntervalDefinitionSupabaseModelImplCopyWithImpl<$Res>
    extends _$ScheduledIntervalDefinitionSupabaseModelCopyWithImpl<$Res,
        _$ScheduledIntervalDefinitionSupabaseModelImpl>
    implements _$$ScheduledIntervalDefinitionSupabaseModelImplCopyWith<$Res> {
  __$$ScheduledIntervalDefinitionSupabaseModelImplCopyWithImpl(
      _$ScheduledIntervalDefinitionSupabaseModelImpl _value,
      $Res Function(_$ScheduledIntervalDefinitionSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledIntervalDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? scheduleDefinitionId = null,
    Object? intervalUnit = null,
    Object? intervalValue = null,
    Object? scheduledTimeIds = null,
    Object? timeExceptionIds = null,
    Object? dateExceptionIds = null,
    Object? enforceScheduleBounds = null,
    Object? repeatCount = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ScheduledIntervalDefinitionSupabaseModelImpl(
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
      scheduleDefinitionId: null == scheduleDefinitionId
          ? _value.scheduleDefinitionId
          : scheduleDefinitionId // ignore: cast_nullable_to_non_nullable
              as String,
      intervalUnit: null == intervalUnit
          ? _value.intervalUnit
          : intervalUnit // ignore: cast_nullable_to_non_nullable
              as String,
      intervalValue: null == intervalValue
          ? _value.intervalValue
          : intervalValue // ignore: cast_nullable_to_non_nullable
              as double,
      scheduledTimeIds: null == scheduledTimeIds
          ? _value._scheduledTimeIds
          : scheduledTimeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeExceptionIds: null == timeExceptionIds
          ? _value._timeExceptionIds
          : timeExceptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateExceptionIds: null == dateExceptionIds
          ? _value._dateExceptionIds
          : dateExceptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      enforceScheduleBounds: null == enforceScheduleBounds
          ? _value.enforceScheduleBounds
          : enforceScheduleBounds // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$ScheduledIntervalDefinitionSupabaseModelImpl
    implements _ScheduledIntervalDefinitionSupabaseModel {
  const _$ScheduledIntervalDefinitionSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'schedule_definition_id')
      required this.scheduleDefinitionId,
      @JsonKey(name: 'interval_unit') required this.intervalUnit,
      @JsonKey(name: 'interval_value') required this.intervalValue,
      @JsonKey(name: 'scheduled_time_ids')
      required final List<String> scheduledTimeIds,
      @JsonKey(name: 'time_exception_ids')
      required final List<String> timeExceptionIds,
      @JsonKey(name: 'date_exception_ids')
      required final List<String> dateExceptionIds,
      @JsonKey(name: 'enforce_schedule_bounds')
      required this.enforceScheduleBounds,
      @JsonKey(name: 'repeat_count') this.repeatCount,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description})
      : _scheduledTimeIds = scheduledTimeIds,
        _timeExceptionIds = timeExceptionIds,
        _dateExceptionIds = dateExceptionIds;

  factory _$ScheduledIntervalDefinitionSupabaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScheduledIntervalDefinitionSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'schedule_definition_id')
  final String scheduleDefinitionId;
  @override
  @JsonKey(name: 'interval_unit')
  final String intervalUnit;
  @override
  @JsonKey(name: 'interval_value')
  final double intervalValue;
  final List<String> _scheduledTimeIds;
  @override
  @JsonKey(name: 'scheduled_time_ids')
  List<String> get scheduledTimeIds {
    if (_scheduledTimeIds is EqualUnmodifiableListView)
      return _scheduledTimeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduledTimeIds);
  }

  final List<String> _timeExceptionIds;
  @override
  @JsonKey(name: 'time_exception_ids')
  List<String> get timeExceptionIds {
    if (_timeExceptionIds is EqualUnmodifiableListView)
      return _timeExceptionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeExceptionIds);
  }

  final List<String> _dateExceptionIds;
  @override
  @JsonKey(name: 'date_exception_ids')
  List<String> get dateExceptionIds {
    if (_dateExceptionIds is EqualUnmodifiableListView)
      return _dateExceptionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateExceptionIds);
  }

  @override
  @JsonKey(name: 'enforce_schedule_bounds')
  final bool enforceScheduleBounds;
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
    return 'ScheduledIntervalDefinitionSupabaseModel(id: $id, userId: $userId, createdAt: $createdAt, scheduleDefinitionId: $scheduleDefinitionId, intervalUnit: $intervalUnit, intervalValue: $intervalValue, scheduledTimeIds: $scheduledTimeIds, timeExceptionIds: $timeExceptionIds, dateExceptionIds: $dateExceptionIds, enforceScheduleBounds: $enforceScheduleBounds, repeatCount: $repeatCount, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledIntervalDefinitionSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.scheduleDefinitionId, scheduleDefinitionId) ||
                other.scheduleDefinitionId == scheduleDefinitionId) &&
            (identical(other.intervalUnit, intervalUnit) ||
                other.intervalUnit == intervalUnit) &&
            (identical(other.intervalValue, intervalValue) ||
                other.intervalValue == intervalValue) &&
            const DeepCollectionEquality()
                .equals(other._scheduledTimeIds, _scheduledTimeIds) &&
            const DeepCollectionEquality()
                .equals(other._timeExceptionIds, _timeExceptionIds) &&
            const DeepCollectionEquality()
                .equals(other._dateExceptionIds, _dateExceptionIds) &&
            (identical(other.enforceScheduleBounds, enforceScheduleBounds) ||
                other.enforceScheduleBounds == enforceScheduleBounds) &&
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
      scheduleDefinitionId,
      intervalUnit,
      intervalValue,
      const DeepCollectionEquality().hash(_scheduledTimeIds),
      const DeepCollectionEquality().hash(_timeExceptionIds),
      const DeepCollectionEquality().hash(_dateExceptionIds),
      enforceScheduleBounds,
      repeatCount,
      updatedAt,
      description);

  /// Create a copy of ScheduledIntervalDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledIntervalDefinitionSupabaseModelImplCopyWith<
          _$ScheduledIntervalDefinitionSupabaseModelImpl>
      get copyWith =>
          __$$ScheduledIntervalDefinitionSupabaseModelImplCopyWithImpl<
              _$ScheduledIntervalDefinitionSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduledIntervalDefinitionSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduledIntervalDefinitionSupabaseModel
    implements ScheduledIntervalDefinitionSupabaseModel {
  const factory _ScheduledIntervalDefinitionSupabaseModel(
          {required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'schedule_definition_id')
          required final String scheduleDefinitionId,
          @JsonKey(name: 'interval_unit') required final String intervalUnit,
          @JsonKey(name: 'interval_value') required final double intervalValue,
          @JsonKey(name: 'scheduled_time_ids')
          required final List<String> scheduledTimeIds,
          @JsonKey(name: 'time_exception_ids')
          required final List<String> timeExceptionIds,
          @JsonKey(name: 'date_exception_ids')
          required final List<String> dateExceptionIds,
          @JsonKey(name: 'enforce_schedule_bounds')
          required final bool enforceScheduleBounds,
          @JsonKey(name: 'repeat_count') final int? repeatCount,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          final String? description}) =
      _$ScheduledIntervalDefinitionSupabaseModelImpl;

  factory _ScheduledIntervalDefinitionSupabaseModel.fromJson(
          Map<String, dynamic> json) =
      _$ScheduledIntervalDefinitionSupabaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'schedule_definition_id')
  String get scheduleDefinitionId;
  @override
  @JsonKey(name: 'interval_unit')
  String get intervalUnit;
  @override
  @JsonKey(name: 'interval_value')
  double get intervalValue;
  @override
  @JsonKey(name: 'scheduled_time_ids')
  List<String> get scheduledTimeIds;
  @override
  @JsonKey(name: 'time_exception_ids')
  List<String> get timeExceptionIds;
  @override
  @JsonKey(name: 'date_exception_ids')
  List<String> get dateExceptionIds;
  @override
  @JsonKey(name: 'enforce_schedule_bounds')
  bool get enforceScheduleBounds;
  @override
  @JsonKey(name: 'repeat_count')
  int? get repeatCount;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get description;

  /// Create a copy of ScheduledIntervalDefinitionSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduledIntervalDefinitionSupabaseModelImplCopyWith<
          _$ScheduledIntervalDefinitionSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
