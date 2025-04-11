// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoalSupabaseModel _$GoalSupabaseModelFromJson(Map<String, dynamic> json) {
  return _GoalSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$GoalSupabaseModel {
  String get taskId => throw _privateConstructorUsedError;
  String get measurementUnitId => throw _privateConstructorUsedError;
  int get measurementUnitValue => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_task_id')
  String? get subTaskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_active_hour')
  double? get perActiveHour => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_active_day')
  double? get perActiveDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_active_week')
  double? get perActiveWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_active_month')
  double? get perActiveMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_active_year')
  double? get perActiveYear => throw _privateConstructorUsedError;

  /// Serializes this GoalSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalSupabaseModelCopyWith<GoalSupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalSupabaseModelCopyWith<$Res> {
  factory $GoalSupabaseModelCopyWith(
          GoalSupabaseModel value, $Res Function(GoalSupabaseModel) then) =
      _$GoalSupabaseModelCopyWithImpl<$Res, GoalSupabaseModel>;
  @useResult
  $Res call(
      {String taskId,
      String measurementUnitId,
      int measurementUnitValue,
      String? id,
      @JsonKey(name: 'sub_task_id') String? subTaskId,
      @JsonKey(name: 'user_id') String? userId,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'per_active_hour') double? perActiveHour,
      @JsonKey(name: 'per_active_day') double? perActiveDay,
      @JsonKey(name: 'per_active_week') double? perActiveWeek,
      @JsonKey(name: 'per_active_month') double? perActiveMonth,
      @JsonKey(name: 'per_active_year') double? perActiveYear});
}

/// @nodoc
class _$GoalSupabaseModelCopyWithImpl<$Res, $Val extends GoalSupabaseModel>
    implements $GoalSupabaseModelCopyWith<$Res> {
  _$GoalSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? measurementUnitId = null,
    Object? measurementUnitValue = null,
    Object? id = freezed,
    Object? subTaskId = freezed,
    Object? userId = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? perActiveHour = freezed,
    Object? perActiveDay = freezed,
    Object? perActiveWeek = freezed,
    Object? perActiveMonth = freezed,
    Object? perActiveYear = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      measurementUnitId: null == measurementUnitId
          ? _value.measurementUnitId
          : measurementUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      measurementUnitValue: null == measurementUnitValue
          ? _value.measurementUnitValue
          : measurementUnitValue // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subTaskId: freezed == subTaskId
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      perActiveHour: freezed == perActiveHour
          ? _value.perActiveHour
          : perActiveHour // ignore: cast_nullable_to_non_nullable
              as double?,
      perActiveDay: freezed == perActiveDay
          ? _value.perActiveDay
          : perActiveDay // ignore: cast_nullable_to_non_nullable
              as double?,
      perActiveWeek: freezed == perActiveWeek
          ? _value.perActiveWeek
          : perActiveWeek // ignore: cast_nullable_to_non_nullable
              as double?,
      perActiveMonth: freezed == perActiveMonth
          ? _value.perActiveMonth
          : perActiveMonth // ignore: cast_nullable_to_non_nullable
              as double?,
      perActiveYear: freezed == perActiveYear
          ? _value.perActiveYear
          : perActiveYear // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalSupabaseModelImplCopyWith<$Res>
    implements $GoalSupabaseModelCopyWith<$Res> {
  factory _$$GoalSupabaseModelImplCopyWith(_$GoalSupabaseModelImpl value,
          $Res Function(_$GoalSupabaseModelImpl) then) =
      __$$GoalSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskId,
      String measurementUnitId,
      int measurementUnitValue,
      String? id,
      @JsonKey(name: 'sub_task_id') String? subTaskId,
      @JsonKey(name: 'user_id') String? userId,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'per_active_hour') double? perActiveHour,
      @JsonKey(name: 'per_active_day') double? perActiveDay,
      @JsonKey(name: 'per_active_week') double? perActiveWeek,
      @JsonKey(name: 'per_active_month') double? perActiveMonth,
      @JsonKey(name: 'per_active_year') double? perActiveYear});
}

/// @nodoc
class __$$GoalSupabaseModelImplCopyWithImpl<$Res>
    extends _$GoalSupabaseModelCopyWithImpl<$Res, _$GoalSupabaseModelImpl>
    implements _$$GoalSupabaseModelImplCopyWith<$Res> {
  __$$GoalSupabaseModelImplCopyWithImpl(_$GoalSupabaseModelImpl _value,
      $Res Function(_$GoalSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? measurementUnitId = null,
    Object? measurementUnitValue = null,
    Object? id = freezed,
    Object? subTaskId = freezed,
    Object? userId = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? perActiveHour = freezed,
    Object? perActiveDay = freezed,
    Object? perActiveWeek = freezed,
    Object? perActiveMonth = freezed,
    Object? perActiveYear = freezed,
  }) {
    return _then(_$GoalSupabaseModelImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      measurementUnitId: null == measurementUnitId
          ? _value.measurementUnitId
          : measurementUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      measurementUnitValue: null == measurementUnitValue
          ? _value.measurementUnitValue
          : measurementUnitValue // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subTaskId: freezed == subTaskId
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      perActiveHour: freezed == perActiveHour
          ? _value.perActiveHour
          : perActiveHour // ignore: cast_nullable_to_non_nullable
              as double?,
      perActiveDay: freezed == perActiveDay
          ? _value.perActiveDay
          : perActiveDay // ignore: cast_nullable_to_non_nullable
              as double?,
      perActiveWeek: freezed == perActiveWeek
          ? _value.perActiveWeek
          : perActiveWeek // ignore: cast_nullable_to_non_nullable
              as double?,
      perActiveMonth: freezed == perActiveMonth
          ? _value.perActiveMonth
          : perActiveMonth // ignore: cast_nullable_to_non_nullable
              as double?,
      perActiveYear: freezed == perActiveYear
          ? _value.perActiveYear
          : perActiveYear // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalSupabaseModelImpl implements _GoalSupabaseModel {
  const _$GoalSupabaseModelImpl(
      {required this.taskId,
      required this.measurementUnitId,
      required this.measurementUnitValue,
      required this.id,
      @JsonKey(name: 'sub_task_id') this.subTaskId,
      @JsonKey(name: 'user_id') this.userId,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'per_active_hour') this.perActiveHour,
      @JsonKey(name: 'per_active_day') this.perActiveDay,
      @JsonKey(name: 'per_active_week') this.perActiveWeek,
      @JsonKey(name: 'per_active_month') this.perActiveMonth,
      @JsonKey(name: 'per_active_year') this.perActiveYear});

  factory _$GoalSupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalSupabaseModelImplFromJson(json);

  @override
  final String taskId;
  @override
  final String measurementUnitId;
  @override
  final int measurementUnitValue;
  @override
  final String? id;
  @override
  @JsonKey(name: 'sub_task_id')
  final String? subTaskId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'per_active_hour')
  final double? perActiveHour;
  @override
  @JsonKey(name: 'per_active_day')
  final double? perActiveDay;
  @override
  @JsonKey(name: 'per_active_week')
  final double? perActiveWeek;
  @override
  @JsonKey(name: 'per_active_month')
  final double? perActiveMonth;
  @override
  @JsonKey(name: 'per_active_year')
  final double? perActiveYear;

  @override
  String toString() {
    return 'GoalSupabaseModel(taskId: $taskId, measurementUnitId: $measurementUnitId, measurementUnitValue: $measurementUnitValue, id: $id, subTaskId: $subTaskId, userId: $userId, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, perActiveHour: $perActiveHour, perActiveDay: $perActiveDay, perActiveWeek: $perActiveWeek, perActiveMonth: $perActiveMonth, perActiveYear: $perActiveYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalSupabaseModelImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.measurementUnitId, measurementUnitId) ||
                other.measurementUnitId == measurementUnitId) &&
            (identical(other.measurementUnitValue, measurementUnitValue) ||
                other.measurementUnitValue == measurementUnitValue) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subTaskId, subTaskId) ||
                other.subTaskId == subTaskId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.perActiveHour, perActiveHour) ||
                other.perActiveHour == perActiveHour) &&
            (identical(other.perActiveDay, perActiveDay) ||
                other.perActiveDay == perActiveDay) &&
            (identical(other.perActiveWeek, perActiveWeek) ||
                other.perActiveWeek == perActiveWeek) &&
            (identical(other.perActiveMonth, perActiveMonth) ||
                other.perActiveMonth == perActiveMonth) &&
            (identical(other.perActiveYear, perActiveYear) ||
                other.perActiveYear == perActiveYear));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      taskId,
      measurementUnitId,
      measurementUnitValue,
      id,
      subTaskId,
      userId,
      description,
      createdAt,
      updatedAt,
      perActiveHour,
      perActiveDay,
      perActiveWeek,
      perActiveMonth,
      perActiveYear);

  /// Create a copy of GoalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalSupabaseModelImplCopyWith<_$GoalSupabaseModelImpl> get copyWith =>
      __$$GoalSupabaseModelImplCopyWithImpl<_$GoalSupabaseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _GoalSupabaseModel implements GoalSupabaseModel {
  const factory _GoalSupabaseModel(
          {required final String taskId,
          required final String measurementUnitId,
          required final int measurementUnitValue,
          required final String? id,
          @JsonKey(name: 'sub_task_id') final String? subTaskId,
          @JsonKey(name: 'user_id') final String? userId,
          final String? description,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'per_active_hour') final double? perActiveHour,
          @JsonKey(name: 'per_active_day') final double? perActiveDay,
          @JsonKey(name: 'per_active_week') final double? perActiveWeek,
          @JsonKey(name: 'per_active_month') final double? perActiveMonth,
          @JsonKey(name: 'per_active_year') final double? perActiveYear}) =
      _$GoalSupabaseModelImpl;

  factory _GoalSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$GoalSupabaseModelImpl.fromJson;

  @override
  String get taskId;
  @override
  String get measurementUnitId;
  @override
  int get measurementUnitValue;
  @override
  String? get id;
  @override
  @JsonKey(name: 'sub_task_id')
  String? get subTaskId;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'per_active_hour')
  double? get perActiveHour;
  @override
  @JsonKey(name: 'per_active_day')
  double? get perActiveDay;
  @override
  @JsonKey(name: 'per_active_week')
  double? get perActiveWeek;
  @override
  @JsonKey(name: 'per_active_month')
  double? get perActiveMonth;
  @override
  @JsonKey(name: 'per_active_year')
  double? get perActiveYear;

  /// Create a copy of GoalSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalSupabaseModelImplCopyWith<_$GoalSupabaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
