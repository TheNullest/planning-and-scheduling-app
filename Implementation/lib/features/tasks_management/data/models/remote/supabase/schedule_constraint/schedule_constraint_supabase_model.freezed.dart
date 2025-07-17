// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_constraint_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleConstraintsSupabaseModel _$ScheduleConstraintsSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _ScheduleDefinitionSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleConstraintsSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_range_exception_ids')
  List<String> get dateRangeExceptionIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_range_exception_ids')
  List<String> get timeRangeExceptionIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_exceptions')
  List<DateTime> get dateExceptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'week_day_exceptions')
  List<String> get weekDayExceptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'month_day_exceptions')
  List<int> get monthDayExceptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'enforce_schedule_bounds')
  bool get enforceScheduleBounds => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime? get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  DateTime? get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ScheduleConstraintsSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleConstraintsSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleConstraintsSupabaseModelCopyWith<ScheduleConstraintsSupabaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleConstraintsSupabaseModelCopyWith<$Res> {
  factory $ScheduleConstraintsSupabaseModelCopyWith(
          ScheduleConstraintsSupabaseModel value,
          $Res Function(ScheduleConstraintsSupabaseModel) then) =
      _$ScheduleConstraintsSupabaseModelCopyWithImpl<$Res,
          ScheduleConstraintsSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'date_range_exception_ids')
      List<String> dateRangeExceptionIds,
      @JsonKey(name: 'time_range_exception_ids')
      List<String> timeRangeExceptionIds,
      @JsonKey(name: 'date_exceptions') List<DateTime> dateExceptions,
      @JsonKey(name: 'week_day_exceptions') List<String> weekDayExceptions,
      @JsonKey(name: 'month_day_exceptions') List<int> monthDayExceptions,
      @JsonKey(name: 'enforce_schedule_bounds') bool enforceScheduleBounds,
      @JsonKey(name: 'start_at') DateTime? startAt,
      @JsonKey(name: 'end_at') DateTime? endAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class _$ScheduleConstraintsSupabaseModelCopyWithImpl<$Res,
        $Val extends ScheduleConstraintsSupabaseModel>
    implements $ScheduleConstraintsSupabaseModelCopyWith<$Res> {
  _$ScheduleConstraintsSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleConstraintsSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? dateRangeExceptionIds = null,
    Object? timeRangeExceptionIds = null,
    Object? dateExceptions = null,
    Object? weekDayExceptions = null,
    Object? monthDayExceptions = null,
    Object? enforceScheduleBounds = null,
    Object? startAt = freezed,
    Object? endAt = freezed,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateRangeExceptionIds: null == dateRangeExceptionIds
          ? _value.dateRangeExceptionIds
          : dateRangeExceptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeRangeExceptionIds: null == timeRangeExceptionIds
          ? _value.timeRangeExceptionIds
          : timeRangeExceptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateExceptions: null == dateExceptions
          ? _value.dateExceptions
          : dateExceptions // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      weekDayExceptions: null == weekDayExceptions
          ? _value.weekDayExceptions
          : weekDayExceptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      monthDayExceptions: null == monthDayExceptions
          ? _value.monthDayExceptions
          : monthDayExceptions // ignore: cast_nullable_to_non_nullable
              as List<int>,
      enforceScheduleBounds: null == enforceScheduleBounds
          ? _value.enforceScheduleBounds
          : enforceScheduleBounds // ignore: cast_nullable_to_non_nullable
              as bool,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
    implements $ScheduleConstraintsSupabaseModelCopyWith<$Res> {
  factory _$$ScheduleDefinitionSupabaseModelImplCopyWith(
          _$ScheduleDefinitionSupabaseModelImpl value,
          $Res Function(_$ScheduleDefinitionSupabaseModelImpl) then) =
      __$$ScheduleDefinitionSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'date_range_exception_ids')
      List<String> dateRangeExceptionIds,
      @JsonKey(name: 'time_range_exception_ids')
      List<String> timeRangeExceptionIds,
      @JsonKey(name: 'date_exceptions') List<DateTime> dateExceptions,
      @JsonKey(name: 'week_day_exceptions') List<String> weekDayExceptions,
      @JsonKey(name: 'month_day_exceptions') List<int> monthDayExceptions,
      @JsonKey(name: 'enforce_schedule_bounds') bool enforceScheduleBounds,
      @JsonKey(name: 'start_at') DateTime? startAt,
      @JsonKey(name: 'end_at') DateTime? endAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class __$$ScheduleDefinitionSupabaseModelImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintsSupabaseModelCopyWithImpl<$Res,
        _$ScheduleDefinitionSupabaseModelImpl>
    implements _$$ScheduleDefinitionSupabaseModelImplCopyWith<$Res> {
  __$$ScheduleDefinitionSupabaseModelImplCopyWithImpl(
      _$ScheduleDefinitionSupabaseModelImpl _value,
      $Res Function(_$ScheduleDefinitionSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintsSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? dateRangeExceptionIds = null,
    Object? timeRangeExceptionIds = null,
    Object? dateExceptions = null,
    Object? weekDayExceptions = null,
    Object? monthDayExceptions = null,
    Object? enforceScheduleBounds = null,
    Object? startAt = freezed,
    Object? endAt = freezed,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateRangeExceptionIds: null == dateRangeExceptionIds
          ? _value._dateRangeExceptionIds
          : dateRangeExceptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeRangeExceptionIds: null == timeRangeExceptionIds
          ? _value._timeRangeExceptionIds
          : timeRangeExceptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateExceptions: null == dateExceptions
          ? _value._dateExceptions
          : dateExceptions // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      weekDayExceptions: null == weekDayExceptions
          ? _value._weekDayExceptions
          : weekDayExceptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      monthDayExceptions: null == monthDayExceptions
          ? _value._monthDayExceptions
          : monthDayExceptions // ignore: cast_nullable_to_non_nullable
              as List<int>,
      enforceScheduleBounds: null == enforceScheduleBounds
          ? _value.enforceScheduleBounds
          : enforceScheduleBounds // ignore: cast_nullable_to_non_nullable
              as bool,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'date_range_exception_ids')
      required final List<String> dateRangeExceptionIds,
      @JsonKey(name: 'time_range_exception_ids')
      required final List<String> timeRangeExceptionIds,
      @JsonKey(name: 'date_exceptions')
      required final List<DateTime> dateExceptions,
      @JsonKey(name: 'week_day_exceptions')
      required final List<String> weekDayExceptions,
      @JsonKey(name: 'month_day_exceptions')
      required final List<int> monthDayExceptions,
      @JsonKey(name: 'enforce_schedule_bounds')
      required this.enforceScheduleBounds,
      @JsonKey(name: 'start_at') this.startAt,
      @JsonKey(name: 'end_at') this.endAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description})
      : _dateRangeExceptionIds = dateRangeExceptionIds,
        _timeRangeExceptionIds = timeRangeExceptionIds,
        _dateExceptions = dateExceptions,
        _weekDayExceptions = weekDayExceptions,
        _monthDayExceptions = monthDayExceptions;

  factory _$ScheduleDefinitionSupabaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScheduleDefinitionSupabaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'task_id')
  final String taskId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final List<String> _dateRangeExceptionIds;
  @override
  @JsonKey(name: 'date_range_exception_ids')
  List<String> get dateRangeExceptionIds {
    if (_dateRangeExceptionIds is EqualUnmodifiableListView)
      return _dateRangeExceptionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateRangeExceptionIds);
  }

  final List<String> _timeRangeExceptionIds;
  @override
  @JsonKey(name: 'time_range_exception_ids')
  List<String> get timeRangeExceptionIds {
    if (_timeRangeExceptionIds is EqualUnmodifiableListView)
      return _timeRangeExceptionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeRangeExceptionIds);
  }

  final List<DateTime> _dateExceptions;
  @override
  @JsonKey(name: 'date_exceptions')
  List<DateTime> get dateExceptions {
    if (_dateExceptions is EqualUnmodifiableListView) return _dateExceptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateExceptions);
  }

  final List<String> _weekDayExceptions;
  @override
  @JsonKey(name: 'week_day_exceptions')
  List<String> get weekDayExceptions {
    if (_weekDayExceptions is EqualUnmodifiableListView)
      return _weekDayExceptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekDayExceptions);
  }

  final List<int> _monthDayExceptions;
  @override
  @JsonKey(name: 'month_day_exceptions')
  List<int> get monthDayExceptions {
    if (_monthDayExceptions is EqualUnmodifiableListView)
      return _monthDayExceptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthDayExceptions);
  }

  @override
  @JsonKey(name: 'enforce_schedule_bounds')
  final bool enforceScheduleBounds;
  @override
  @JsonKey(name: 'start_at')
  final DateTime? startAt;
  @override
  @JsonKey(name: 'end_at')
  final DateTime? endAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'ScheduleConstraintsSupabaseModel(id: $id, taskId: $taskId, userId: $userId, createdAt: $createdAt, dateRangeExceptionIds: $dateRangeExceptionIds, timeRangeExceptionIds: $timeRangeExceptionIds, dateExceptions: $dateExceptions, weekDayExceptions: $weekDayExceptions, monthDayExceptions: $monthDayExceptions, enforceScheduleBounds: $enforceScheduleBounds, startAt: $startAt, endAt: $endAt, updatedAt: $updatedAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDefinitionSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._dateRangeExceptionIds, _dateRangeExceptionIds) &&
            const DeepCollectionEquality()
                .equals(other._timeRangeExceptionIds, _timeRangeExceptionIds) &&
            const DeepCollectionEquality()
                .equals(other._dateExceptions, _dateExceptions) &&
            const DeepCollectionEquality()
                .equals(other._weekDayExceptions, _weekDayExceptions) &&
            const DeepCollectionEquality()
                .equals(other._monthDayExceptions, _monthDayExceptions) &&
            (identical(other.enforceScheduleBounds, enforceScheduleBounds) ||
                other.enforceScheduleBounds == enforceScheduleBounds) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
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
      userId,
      createdAt,
      const DeepCollectionEquality().hash(_dateRangeExceptionIds),
      const DeepCollectionEquality().hash(_timeRangeExceptionIds),
      const DeepCollectionEquality().hash(_dateExceptions),
      const DeepCollectionEquality().hash(_weekDayExceptions),
      const DeepCollectionEquality().hash(_monthDayExceptions),
      enforceScheduleBounds,
      startAt,
      endAt,
      updatedAt,
      description);

  /// Create a copy of ScheduleConstraintsSupabaseModel
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
    implements ScheduleConstraintsSupabaseModel {
  const factory _ScheduleDefinitionSupabaseModel(
      {required final String id,
      @JsonKey(name: 'task_id') required final String taskId,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'date_range_exception_ids')
      required final List<String> dateRangeExceptionIds,
      @JsonKey(name: 'time_range_exception_ids')
      required final List<String> timeRangeExceptionIds,
      @JsonKey(name: 'date_exceptions')
      required final List<DateTime> dateExceptions,
      @JsonKey(name: 'week_day_exceptions')
      required final List<String> weekDayExceptions,
      @JsonKey(name: 'month_day_exceptions')
      required final List<int> monthDayExceptions,
      @JsonKey(name: 'enforce_schedule_bounds')
      required final bool enforceScheduleBounds,
      @JsonKey(name: 'start_at') final DateTime? startAt,
      @JsonKey(name: 'end_at') final DateTime? endAt,
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
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'date_range_exception_ids')
  List<String> get dateRangeExceptionIds;
  @override
  @JsonKey(name: 'time_range_exception_ids')
  List<String> get timeRangeExceptionIds;
  @override
  @JsonKey(name: 'date_exceptions')
  List<DateTime> get dateExceptions;
  @override
  @JsonKey(name: 'week_day_exceptions')
  List<String> get weekDayExceptions;
  @override
  @JsonKey(name: 'month_day_exceptions')
  List<int> get monthDayExceptions;
  @override
  @JsonKey(name: 'enforce_schedule_bounds')
  bool get enforceScheduleBounds;
  @override
  @JsonKey(name: 'start_at')
  DateTime? get startAt;
  @override
  @JsonKey(name: 'end_at')
  DateTime? get endAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get description;

  /// Create a copy of ScheduleConstraintsSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleDefinitionSupabaseModelImplCopyWith<
          _$ScheduleDefinitionSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
