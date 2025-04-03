// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_scheduler_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskSchedulerSupabaseModel _$TaskSchedulerSupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _TaskSchedulerSupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$TaskSchedulerSupabaseModel {
  @JsonKey(name: 'main_task_id')
  String get mainTaskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'repetition_type')
  int get repetitionType => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_unit')
  int get timeUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'goal_id')
  String? get goalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'will_start_at')
  DateTime? get willStartAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  DateTime? get endAt => throw _privateConstructorUsedError;

  /// Serializes this TaskSchedulerSupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskSchedulerSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskSchedulerSupabaseModelCopyWith<TaskSchedulerSupabaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskSchedulerSupabaseModelCopyWith<$Res> {
  factory $TaskSchedulerSupabaseModelCopyWith(TaskSchedulerSupabaseModel value,
          $Res Function(TaskSchedulerSupabaseModel) then) =
      _$TaskSchedulerSupabaseModelCopyWithImpl<$Res,
          TaskSchedulerSupabaseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'main_task_id') String mainTaskId,
      @JsonKey(name: 'repetition_type') int repetitionType,
      String? id,
      @JsonKey(name: 'time_unit') int timeUnit,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'goal_id') String? goalId,
      @JsonKey(name: 'will_start_at') DateTime? willStartAt,
      @JsonKey(name: 'end_at') DateTime? endAt});
}

/// @nodoc
class _$TaskSchedulerSupabaseModelCopyWithImpl<$Res,
        $Val extends TaskSchedulerSupabaseModel>
    implements $TaskSchedulerSupabaseModelCopyWith<$Res> {
  _$TaskSchedulerSupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskSchedulerSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainTaskId = null,
    Object? repetitionType = null,
    Object? id = freezed,
    Object? timeUnit = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? goalId = freezed,
    Object? willStartAt = freezed,
    Object? endAt = freezed,
  }) {
    return _then(_value.copyWith(
      mainTaskId: null == mainTaskId
          ? _value.mainTaskId
          : mainTaskId // ignore: cast_nullable_to_non_nullable
              as String,
      repetitionType: null == repetitionType
          ? _value.repetitionType
          : repetitionType // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timeUnit: null == timeUnit
          ? _value.timeUnit
          : timeUnit // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      goalId: freezed == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as String?,
      willStartAt: freezed == willStartAt
          ? _value.willStartAt
          : willStartAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskSchedulerSupabaseModelImplCopyWith<$Res>
    implements $TaskSchedulerSupabaseModelCopyWith<$Res> {
  factory _$$TaskSchedulerSupabaseModelImplCopyWith(
          _$TaskSchedulerSupabaseModelImpl value,
          $Res Function(_$TaskSchedulerSupabaseModelImpl) then) =
      __$$TaskSchedulerSupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'main_task_id') String mainTaskId,
      @JsonKey(name: 'repetition_type') int repetitionType,
      String? id,
      @JsonKey(name: 'time_unit') int timeUnit,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'goal_id') String? goalId,
      @JsonKey(name: 'will_start_at') DateTime? willStartAt,
      @JsonKey(name: 'end_at') DateTime? endAt});
}

/// @nodoc
class __$$TaskSchedulerSupabaseModelImplCopyWithImpl<$Res>
    extends _$TaskSchedulerSupabaseModelCopyWithImpl<$Res,
        _$TaskSchedulerSupabaseModelImpl>
    implements _$$TaskSchedulerSupabaseModelImplCopyWith<$Res> {
  __$$TaskSchedulerSupabaseModelImplCopyWithImpl(
      _$TaskSchedulerSupabaseModelImpl _value,
      $Res Function(_$TaskSchedulerSupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskSchedulerSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainTaskId = null,
    Object? repetitionType = null,
    Object? id = freezed,
    Object? timeUnit = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? goalId = freezed,
    Object? willStartAt = freezed,
    Object? endAt = freezed,
  }) {
    return _then(_$TaskSchedulerSupabaseModelImpl(
      mainTaskId: null == mainTaskId
          ? _value.mainTaskId
          : mainTaskId // ignore: cast_nullable_to_non_nullable
              as String,
      repetitionType: null == repetitionType
          ? _value.repetitionType
          : repetitionType // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timeUnit: null == timeUnit
          ? _value.timeUnit
          : timeUnit // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      goalId: freezed == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as String?,
      willStartAt: freezed == willStartAt
          ? _value.willStartAt
          : willStartAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskSchedulerSupabaseModelImpl implements _TaskSchedulerSupabaseModel {
  const _$TaskSchedulerSupabaseModelImpl(
      {@JsonKey(name: 'main_task_id') required this.mainTaskId,
      @JsonKey(name: 'repetition_type') required this.repetitionType,
      required this.id,
      @JsonKey(name: 'time_unit') required this.timeUnit,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'goal_id') this.goalId,
      @JsonKey(name: 'will_start_at') this.willStartAt,
      @JsonKey(name: 'end_at') this.endAt});

  factory _$TaskSchedulerSupabaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TaskSchedulerSupabaseModelImplFromJson(json);

  @override
  @JsonKey(name: 'main_task_id')
  final String mainTaskId;
  @override
  @JsonKey(name: 'repetition_type')
  final int repetitionType;
  @override
  final String? id;
  @override
  @JsonKey(name: 'time_unit')
  final int timeUnit;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'goal_id')
  final String? goalId;
  @override
  @JsonKey(name: 'will_start_at')
  final DateTime? willStartAt;
  @override
  @JsonKey(name: 'end_at')
  final DateTime? endAt;

  @override
  String toString() {
    return 'TaskSchedulerSupabaseModel(mainTaskId: $mainTaskId, repetitionType: $repetitionType, id: $id, timeUnit: $timeUnit, updatedAt: $updatedAt, description: $description, createdAt: $createdAt, userId: $userId, goalId: $goalId, willStartAt: $willStartAt, endAt: $endAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSchedulerSupabaseModelImpl &&
            (identical(other.mainTaskId, mainTaskId) ||
                other.mainTaskId == mainTaskId) &&
            (identical(other.repetitionType, repetitionType) ||
                other.repetitionType == repetitionType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timeUnit, timeUnit) ||
                other.timeUnit == timeUnit) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.willStartAt, willStartAt) ||
                other.willStartAt == willStartAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainTaskId,
      repetitionType,
      id,
      timeUnit,
      updatedAt,
      description,
      createdAt,
      userId,
      goalId,
      willStartAt,
      endAt);

  /// Create a copy of TaskSchedulerSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskSchedulerSupabaseModelImplCopyWith<_$TaskSchedulerSupabaseModelImpl>
      get copyWith => __$$TaskSchedulerSupabaseModelImplCopyWithImpl<
          _$TaskSchedulerSupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskSchedulerSupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _TaskSchedulerSupabaseModel
    implements TaskSchedulerSupabaseModel {
  const factory _TaskSchedulerSupabaseModel(
          {@JsonKey(name: 'main_task_id') required final String mainTaskId,
          @JsonKey(name: 'repetition_type') required final int repetitionType,
          required final String? id,
          @JsonKey(name: 'time_unit') required final int timeUnit,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          final String? description,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'goal_id') final String? goalId,
          @JsonKey(name: 'will_start_at') final DateTime? willStartAt,
          @JsonKey(name: 'end_at') final DateTime? endAt}) =
      _$TaskSchedulerSupabaseModelImpl;

  factory _TaskSchedulerSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$TaskSchedulerSupabaseModelImpl.fromJson;

  @override
  @JsonKey(name: 'main_task_id')
  String get mainTaskId;
  @override
  @JsonKey(name: 'repetition_type')
  int get repetitionType;
  @override
  String? get id;
  @override
  @JsonKey(name: 'time_unit')
  int get timeUnit;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'goal_id')
  String? get goalId;
  @override
  @JsonKey(name: 'will_start_at')
  DateTime? get willStartAt;
  @override
  @JsonKey(name: 'end_at')
  DateTime? get endAt;

  /// Create a copy of TaskSchedulerSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskSchedulerSupabaseModelImplCopyWith<_$TaskSchedulerSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
