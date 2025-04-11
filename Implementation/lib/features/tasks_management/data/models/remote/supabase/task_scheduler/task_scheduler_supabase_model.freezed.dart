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
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'repetition_type')
  String get repetitionType => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'task_scheduler_specific_times',
      includeToJson: false,
      fromJson: _extractIds)
  List<int>? get specificTimes => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_unit')
  String get timeUnit => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'due_at')
  DateTime? get dueDate => throw _privateConstructorUsedError;

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
      {String? id,
      @JsonKey(name: 'main_task_id') String taskId,
      @JsonKey(name: 'repetition_type') String repetitionType,
      @JsonKey(
          name: 'task_scheduler_specific_times',
          includeToJson: false,
          fromJson: _extractIds)
      List<int>? specificTimes,
      @JsonKey(name: 'time_unit') String timeUnit,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'goal_id') String? goalId,
      @JsonKey(name: 'will_start_at') DateTime? willStartAt,
      @JsonKey(name: 'due_at') DateTime? dueDate});
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
    Object? id = freezed,
    Object? taskId = null,
    Object? repetitionType = null,
    Object? specificTimes = freezed,
    Object? timeUnit = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? goalId = freezed,
    Object? willStartAt = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      repetitionType: null == repetitionType
          ? _value.repetitionType
          : repetitionType // ignore: cast_nullable_to_non_nullable
              as String,
      specificTimes: freezed == specificTimes
          ? _value.specificTimes
          : specificTimes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      timeUnit: null == timeUnit
          ? _value.timeUnit
          : timeUnit // ignore: cast_nullable_to_non_nullable
              as String,
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
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
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
      {String? id,
      @JsonKey(name: 'main_task_id') String taskId,
      @JsonKey(name: 'repetition_type') String repetitionType,
      @JsonKey(
          name: 'task_scheduler_specific_times',
          includeToJson: false,
          fromJson: _extractIds)
      List<int>? specificTimes,
      @JsonKey(name: 'time_unit') String timeUnit,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'goal_id') String? goalId,
      @JsonKey(name: 'will_start_at') DateTime? willStartAt,
      @JsonKey(name: 'due_at') DateTime? dueDate});
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
    Object? id = freezed,
    Object? taskId = null,
    Object? repetitionType = null,
    Object? specificTimes = freezed,
    Object? timeUnit = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? goalId = freezed,
    Object? willStartAt = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(_$TaskSchedulerSupabaseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      repetitionType: null == repetitionType
          ? _value.repetitionType
          : repetitionType // ignore: cast_nullable_to_non_nullable
              as String,
      specificTimes: freezed == specificTimes
          ? _value._specificTimes
          : specificTimes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      timeUnit: null == timeUnit
          ? _value.timeUnit
          : timeUnit // ignore: cast_nullable_to_non_nullable
              as String,
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
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskSchedulerSupabaseModelImpl implements _TaskSchedulerSupabaseModel {
  const _$TaskSchedulerSupabaseModelImpl(
      {required this.id,
      @JsonKey(name: 'main_task_id') required this.taskId,
      @JsonKey(name: 'repetition_type') required this.repetitionType,
      @JsonKey(
          name: 'task_scheduler_specific_times',
          includeToJson: false,
          fromJson: _extractIds)
      required final List<int>? specificTimes,
      @JsonKey(name: 'time_unit') required this.timeUnit,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'goal_id') this.goalId,
      @JsonKey(name: 'will_start_at') this.willStartAt,
      @JsonKey(name: 'due_at') this.dueDate})
      : _specificTimes = specificTimes;

  factory _$TaskSchedulerSupabaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TaskSchedulerSupabaseModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'main_task_id')
  final String taskId;
  @override
  @JsonKey(name: 'repetition_type')
  final String repetitionType;
  final List<int>? _specificTimes;
  @override
  @JsonKey(
      name: 'task_scheduler_specific_times',
      includeToJson: false,
      fromJson: _extractIds)
  List<int>? get specificTimes {
    final value = _specificTimes;
    if (value == null) return null;
    if (_specificTimes is EqualUnmodifiableListView) return _specificTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'time_unit')
  final String timeUnit;
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
  @JsonKey(name: 'due_at')
  final DateTime? dueDate;

  @override
  String toString() {
    return 'TaskSchedulerSupabaseModel(id: $id, taskId: $taskId, repetitionType: $repetitionType, specificTimes: $specificTimes, timeUnit: $timeUnit, updatedAt: $updatedAt, description: $description, createdAt: $createdAt, userId: $userId, goalId: $goalId, willStartAt: $willStartAt, dueDate: $dueDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSchedulerSupabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.repetitionType, repetitionType) ||
                other.repetitionType == repetitionType) &&
            const DeepCollectionEquality()
                .equals(other._specificTimes, _specificTimes) &&
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
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      taskId,
      repetitionType,
      const DeepCollectionEquality().hash(_specificTimes),
      timeUnit,
      updatedAt,
      description,
      createdAt,
      userId,
      goalId,
      willStartAt,
      dueDate);

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
      {required final String? id,
      @JsonKey(name: 'main_task_id') required final String taskId,
      @JsonKey(name: 'repetition_type') required final String repetitionType,
      @JsonKey(
          name: 'task_scheduler_specific_times',
          includeToJson: false,
          fromJson: _extractIds)
      required final List<int>? specificTimes,
      @JsonKey(name: 'time_unit') required final String timeUnit,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? description,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'goal_id') final String? goalId,
      @JsonKey(name: 'will_start_at') final DateTime? willStartAt,
      @JsonKey(name: 'due_at')
      final DateTime? dueDate}) = _$TaskSchedulerSupabaseModelImpl;

  factory _TaskSchedulerSupabaseModel.fromJson(Map<String, dynamic> json) =
      _$TaskSchedulerSupabaseModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'main_task_id')
  String get taskId;
  @override
  @JsonKey(name: 'repetition_type')
  String get repetitionType;
  @override
  @JsonKey(
      name: 'task_scheduler_specific_times',
      includeToJson: false,
      fromJson: _extractIds)
  List<int>? get specificTimes;
  @override
  @JsonKey(name: 'time_unit')
  String get timeUnit;
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
  @JsonKey(name: 'due_at')
  DateTime? get dueDate;

  /// Create a copy of TaskSchedulerSupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskSchedulerSupabaseModelImplCopyWith<_$TaskSchedulerSupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
