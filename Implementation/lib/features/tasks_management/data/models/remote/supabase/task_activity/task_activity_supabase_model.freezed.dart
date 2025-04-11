// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_activity_supabase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskActivitySupabaseModel _$TaskActivitySupabaseModelFromJson(
    Map<String, dynamic> json) {
  return _TaskActivitySupabaseModel.fromJson(json);
}

/// @nodoc
mixin _$TaskActivitySupabaseModel {
  @JsonKey(name: 'main_task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_task_id')
  String get subTaskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime get startAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false, name: 'is_paused')
  bool get isPaused => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_scheduler_id')
  String? get taskSchedulerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  DateTime? get dueDate => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'spent_time', fromJson: _durationFromJson, toJson: _durationToJson)
  Duration? get spentTime => throw _privateConstructorUsedError;

  /// Serializes this TaskActivitySupabaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskActivitySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskActivitySupabaseModelCopyWith<TaskActivitySupabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskActivitySupabaseModelCopyWith<$Res> {
  factory $TaskActivitySupabaseModelCopyWith(TaskActivitySupabaseModel value,
          $Res Function(TaskActivitySupabaseModel) then) =
      _$TaskActivitySupabaseModelCopyWithImpl<$Res, TaskActivitySupabaseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'main_task_id') String taskId,
      @JsonKey(name: 'sub_task_id') String subTaskId,
      @JsonKey(name: 'start_at') DateTime startAt,
      String? id,
      @JsonKey(defaultValue: false, name: 'is_paused') bool isPaused,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'task_scheduler_id') String? taskSchedulerId,
      @JsonKey(name: 'due_date') DateTime? dueDate,
      @JsonKey(
          name: 'spent_time',
          fromJson: _durationFromJson,
          toJson: _durationToJson)
      Duration? spentTime});
}

/// @nodoc
class _$TaskActivitySupabaseModelCopyWithImpl<$Res,
        $Val extends TaskActivitySupabaseModel>
    implements $TaskActivitySupabaseModelCopyWith<$Res> {
  _$TaskActivitySupabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskActivitySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? subTaskId = null,
    Object? startAt = null,
    Object? id = freezed,
    Object? isPaused = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? taskSchedulerId = freezed,
    Object? dueDate = freezed,
    Object? spentTime = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      subTaskId: null == subTaskId
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
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
      taskSchedulerId: freezed == taskSchedulerId
          ? _value.taskSchedulerId
          : taskSchedulerId // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      spentTime: freezed == spentTime
          ? _value.spentTime
          : spentTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskActivitySupabaseModelImplCopyWith<$Res>
    implements $TaskActivitySupabaseModelCopyWith<$Res> {
  factory _$$TaskActivitySupabaseModelImplCopyWith(
          _$TaskActivitySupabaseModelImpl value,
          $Res Function(_$TaskActivitySupabaseModelImpl) then) =
      __$$TaskActivitySupabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'main_task_id') String taskId,
      @JsonKey(name: 'sub_task_id') String subTaskId,
      @JsonKey(name: 'start_at') DateTime startAt,
      String? id,
      @JsonKey(defaultValue: false, name: 'is_paused') bool isPaused,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'task_scheduler_id') String? taskSchedulerId,
      @JsonKey(name: 'due_date') DateTime? dueDate,
      @JsonKey(
          name: 'spent_time',
          fromJson: _durationFromJson,
          toJson: _durationToJson)
      Duration? spentTime});
}

/// @nodoc
class __$$TaskActivitySupabaseModelImplCopyWithImpl<$Res>
    extends _$TaskActivitySupabaseModelCopyWithImpl<$Res,
        _$TaskActivitySupabaseModelImpl>
    implements _$$TaskActivitySupabaseModelImplCopyWith<$Res> {
  __$$TaskActivitySupabaseModelImplCopyWithImpl(
      _$TaskActivitySupabaseModelImpl _value,
      $Res Function(_$TaskActivitySupabaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskActivitySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? subTaskId = null,
    Object? startAt = null,
    Object? id = freezed,
    Object? isPaused = null,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? taskSchedulerId = freezed,
    Object? dueDate = freezed,
    Object? spentTime = freezed,
  }) {
    return _then(_$TaskActivitySupabaseModelImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      subTaskId: null == subTaskId
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
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
      taskSchedulerId: freezed == taskSchedulerId
          ? _value.taskSchedulerId
          : taskSchedulerId // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      spentTime: freezed == spentTime
          ? _value.spentTime
          : spentTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskActivitySupabaseModelImpl implements _TaskActivitySupabaseModel {
  const _$TaskActivitySupabaseModelImpl(
      {@JsonKey(name: 'main_task_id') required this.taskId,
      @JsonKey(name: 'sub_task_id') required this.subTaskId,
      @JsonKey(name: 'start_at') required this.startAt,
      required this.id,
      @JsonKey(defaultValue: false, name: 'is_paused') required this.isPaused,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'task_scheduler_id') this.taskSchedulerId,
      @JsonKey(name: 'due_date') this.dueDate,
      @JsonKey(
          name: 'spent_time',
          fromJson: _durationFromJson,
          toJson: _durationToJson)
      this.spentTime});

  factory _$TaskActivitySupabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskActivitySupabaseModelImplFromJson(json);

  @override
  @JsonKey(name: 'main_task_id')
  final String taskId;
  @override
  @JsonKey(name: 'sub_task_id')
  final String subTaskId;
  @override
  @JsonKey(name: 'start_at')
  final DateTime startAt;
  @override
  final String? id;
  @override
  @JsonKey(defaultValue: false, name: 'is_paused')
  final bool isPaused;
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
  @JsonKey(name: 'task_scheduler_id')
  final String? taskSchedulerId;
  @override
  @JsonKey(name: 'due_date')
  final DateTime? dueDate;
  @override
  @JsonKey(
      name: 'spent_time', fromJson: _durationFromJson, toJson: _durationToJson)
  final Duration? spentTime;

  @override
  String toString() {
    return 'TaskActivitySupabaseModel(taskId: $taskId, subTaskId: $subTaskId, startAt: $startAt, id: $id, isPaused: $isPaused, updatedAt: $updatedAt, description: $description, createdAt: $createdAt, userId: $userId, taskSchedulerId: $taskSchedulerId, dueDate: $dueDate, spentTime: $spentTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskActivitySupabaseModelImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.subTaskId, subTaskId) ||
                other.subTaskId == subTaskId) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.taskSchedulerId, taskSchedulerId) ||
                other.taskSchedulerId == taskSchedulerId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.spentTime, spentTime) ||
                other.spentTime == spentTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      taskId,
      subTaskId,
      startAt,
      id,
      isPaused,
      updatedAt,
      description,
      createdAt,
      userId,
      taskSchedulerId,
      dueDate,
      spentTime);

  /// Create a copy of TaskActivitySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskActivitySupabaseModelImplCopyWith<_$TaskActivitySupabaseModelImpl>
      get copyWith => __$$TaskActivitySupabaseModelImplCopyWithImpl<
          _$TaskActivitySupabaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskActivitySupabaseModelImplToJson(
      this,
    );
  }
}

abstract class _TaskActivitySupabaseModel implements TaskActivitySupabaseModel {
  const factory _TaskActivitySupabaseModel(
      {@JsonKey(name: 'main_task_id') required final String taskId,
      @JsonKey(name: 'sub_task_id') required final String subTaskId,
      @JsonKey(name: 'start_at') required final DateTime startAt,
      required final String? id,
      @JsonKey(defaultValue: false, name: 'is_paused')
      required final bool isPaused,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? description,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'task_scheduler_id') final String? taskSchedulerId,
      @JsonKey(name: 'due_date') final DateTime? dueDate,
      @JsonKey(
          name: 'spent_time',
          fromJson: _durationFromJson,
          toJson: _durationToJson)
      final Duration? spentTime}) = _$TaskActivitySupabaseModelImpl;

  factory _TaskActivitySupabaseModel.fromJson(Map<String, dynamic> json) =
      _$TaskActivitySupabaseModelImpl.fromJson;

  @override
  @JsonKey(name: 'main_task_id')
  String get taskId;
  @override
  @JsonKey(name: 'sub_task_id')
  String get subTaskId;
  @override
  @JsonKey(name: 'start_at')
  DateTime get startAt;
  @override
  String? get id;
  @override
  @JsonKey(defaultValue: false, name: 'is_paused')
  bool get isPaused;
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
  @JsonKey(name: 'task_scheduler_id')
  String? get taskSchedulerId;
  @override
  @JsonKey(name: 'due_date')
  DateTime? get dueDate;
  @override
  @JsonKey(
      name: 'spent_time', fromJson: _durationFromJson, toJson: _durationToJson)
  Duration? get spentTime;

  /// Create a copy of TaskActivitySupabaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskActivitySupabaseModelImplCopyWith<_$TaskActivitySupabaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
