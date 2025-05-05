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

ScheduleConstraintSupabaseModel _$ScheduleConstraintSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _ScheduleDefinitionSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleConstraintSupabaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'exception_date_ids')
  List<String> get exceptionDateIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'exception_time_ids')
  List<String> get exceptionTimeIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'exception_week_days')
  List<String> get exceptionWeekDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'exception_month_days')
  List<int> get exceptionMonthDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'enforce_schedule_bounds')
  bool get enforceScheduleBounds => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime? get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  DateTime? get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ScheduleConstraintSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleConstraintSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleConstraintSupabaseModelCopyWith<ScheduleConstraintSupabaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleConstraintSupabaseModelCopyWith<$Res> {
  factory $ScheduleConstraintSupabaseModelCopyWith(
          ScheduleConstraintSupabaseModel value,
          $Res Function(ScheduleConstraintSupabaseModel) then) =
      _$ScheduleConstraintSupabaseModelCopyWithImpl<$Res,
          ScheduleConstraintSupabaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'exception_date_ids') List<String> exceptionDateIds,
      @JsonKey(name: 'exception_time_ids') List<String> exceptionTimeIds,
      @JsonKey(name: 'exception_week_days') List<String> exceptionWeekDays,
      @JsonKey(name: 'exception_month_days') List<int> exceptionMonthDays,
      @JsonKey(name: 'enforce_schedule_bounds') bool enforceScheduleBounds,
      @JsonKey(name: 'start_at') DateTime? startAt,
      @JsonKey(name: 'end_at') DateTime? endAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class _$ScheduleConstraintSupabaseModelCopyWithImpl<$Res,
        $Val extends ScheduleConstraintSupabaseModel>
    implements $ScheduleConstraintSupabaseModelCopyWith<$Res> {
  _$ScheduleConstraintSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleConstraintSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? exceptionDateIds = null,
    Object? exceptionTimeIds = null,
    Object? exceptionWeekDays = null,
    Object? exceptionMonthDays = null,
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
      exceptionDateIds: null == exceptionDateIds
          ? _value.exceptionDateIds
          : exceptionDateIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exceptionTimeIds: null == exceptionTimeIds
          ? _value.exceptionTimeIds
          : exceptionTimeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exceptionWeekDays: null == exceptionWeekDays
          ? _value.exceptionWeekDays
          : exceptionWeekDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exceptionMonthDays: null == exceptionMonthDays
          ? _value.exceptionMonthDays
          : exceptionMonthDays // ignore: cast_nullable_to_non_nullable
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
    implements $ScheduleConstraintSupabaseModelCopyWith<$Res> {
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
      @JsonKey(name: 'exception_date_ids') List<String> exceptionDateIds,
      @JsonKey(name: 'exception_time_ids') List<String> exceptionTimeIds,
      @JsonKey(name: 'exception_week_days') List<String> exceptionWeekDays,
      @JsonKey(name: 'exception_month_days') List<int> exceptionMonthDays,
      @JsonKey(name: 'enforce_schedule_bounds') bool enforceScheduleBounds,
      @JsonKey(name: 'start_at') DateTime? startAt,
      @JsonKey(name: 'end_at') DateTime? endAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description});
}

/// @nodoc
class __$$ScheduleDefinitionSupabaseModelImplCopyWithImpl<$Res>
    extends _$ScheduleConstraintSupabaseModelCopyWithImpl<$Res,
        _$ScheduleDefinitionSupabaseModelImpl>
    implements _$$ScheduleDefinitionSupabaseModelImplCopyWith<$Res> {
  __$$ScheduleDefinitionSupabaseModelImplCopyWithImpl(
      _$ScheduleDefinitionSupabaseModelImpl _value,
      $Res Function(_$ScheduleDefinitionSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleConstraintSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? exceptionDateIds = null,
    Object? exceptionTimeIds = null,
    Object? exceptionWeekDays = null,
    Object? exceptionMonthDays = null,
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
      exceptionDateIds: null == exceptionDateIds
          ? _value._exceptionDateIds
          : exceptionDateIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exceptionTimeIds: null == exceptionTimeIds
          ? _value._exceptionTimeIds
          : exceptionTimeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exceptionWeekDays: null == exceptionWeekDays
          ? _value._exceptionWeekDays
          : exceptionWeekDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exceptionMonthDays: null == exceptionMonthDays
          ? _value._exceptionMonthDays
          : exceptionMonthDays // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'exception_date_ids')
      required final List<String> exceptionDateIds,
      @JsonKey(name: 'exception_time_ids')
      required final List<String> exceptionTimeIds,
      @JsonKey(name: 'exception_week_days')
      required final List<String> exceptionWeekDays,
      @JsonKey(name: 'exception_month_days')
      required final List<int> exceptionMonthDays,
      @JsonKey(name: 'enforce_schedule_bounds')
      required this.enforceScheduleBounds,
      @JsonKey(name: 'start_at') this.startAt,
      @JsonKey(name: 'end_at') this.endAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description})
      : _exceptionDateIds = exceptionDateIds,
        _exceptionTimeIds = exceptionTimeIds,
        _exceptionWeekDays = exceptionWeekDays,
        _exceptionMonthDays = exceptionMonthDays;

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
  final List<String> _exceptionDateIds;
  @override
  @JsonKey(name: 'exception_date_ids')
  List<String> get exceptionDateIds {
    if (_exceptionDateIds is EqualUnmodifiableListView)
      return _exceptionDateIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exceptionDateIds);
  }

  final List<String> _exceptionTimeIds;
  @override
  @JsonKey(name: 'exception_time_ids')
  List<String> get exceptionTimeIds {
    if (_exceptionTimeIds is EqualUnmodifiableListView)
      return _exceptionTimeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exceptionTimeIds);
  }

  final List<String> _exceptionWeekDays;
  @override
  @JsonKey(name: 'exception_week_days')
  List<String> get exceptionWeekDays {
    if (_exceptionWeekDays is EqualUnmodifiableListView)
      return _exceptionWeekDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exceptionWeekDays);
  }

  final List<int> _exceptionMonthDays;
  @override
  @JsonKey(name: 'exception_month_days')
  List<int> get exceptionMonthDays {
    if (_exceptionMonthDays is EqualUnmodifiableListView)
      return _exceptionMonthDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exceptionMonthDays);
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
    return 'ScheduleConstraintSupabaseModel(id: $id, taskId: $taskId, userId: $userId, createdAt: $createdAt, exceptionDateIds: $exceptionDateIds, exceptionTimeIds: $exceptionTimeIds, exceptionWeekDays: $exceptionWeekDays, exceptionMonthDays: $exceptionMonthDays, enforceScheduleBounds: $enforceScheduleBounds, startAt: $startAt, endAt: $endAt, updatedAt: $updatedAt, description: $description)';
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
                .equals(other._exceptionDateIds, _exceptionDateIds) &&
            const DeepCollectionEquality()
                .equals(other._exceptionTimeIds, _exceptionTimeIds) &&
            const DeepCollectionEquality()
                .equals(other._exceptionWeekDays, _exceptionWeekDays) &&
            const DeepCollectionEquality()
                .equals(other._exceptionMonthDays, _exceptionMonthDays) &&
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
      const DeepCollectionEquality().hash(_exceptionDateIds),
      const DeepCollectionEquality().hash(_exceptionTimeIds),
      const DeepCollectionEquality().hash(_exceptionWeekDays),
      const DeepCollectionEquality().hash(_exceptionMonthDays),
      enforceScheduleBounds,
      startAt,
      endAt,
      updatedAt,
      description);

  /// Create a copy of ScheduleConstraintSupabaseModel
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
    implements ScheduleConstraintSupabaseModel {
  const factory _ScheduleDefinitionSupabaseModel(
      {required final String id,
      @JsonKey(name: 'task_id') required final String taskId,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'exception_date_ids')
      required final List<String> exceptionDateIds,
      @JsonKey(name: 'exception_time_ids')
      required final List<String> exceptionTimeIds,
      @JsonKey(name: 'exception_week_days')
      required final List<String> exceptionWeekDays,
      @JsonKey(name: 'exception_month_days')
      required final List<int> exceptionMonthDays,
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
  @JsonKey(name: 'exception_date_ids')
  List<String> get exceptionDateIds;
  @override
  @JsonKey(name: 'exception_time_ids')
  List<String> get exceptionTimeIds;
  @override
  @JsonKey(name: 'exception_week_days')
  List<String> get exceptionWeekDays;
  @override
  @JsonKey(name: 'exception_month_days')
  List<int> get exceptionMonthDays;
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

  /// Create a copy of ScheduleConstraintSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleDefinitionSupabaseModelImplCopyWith<
          _$ScheduleDefinitionSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
