// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchActiveTasks,
    required TResult Function(TaskEntity newTask) createTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(SubTaskEntity newSubTask) createSubTask,
    required TResult Function(String taskId) deleteBatchSubTasksByTaskId,
    required TResult Function(SubTaskEntity subTask) updateSubTask,
    required TResult Function(String subTaskId) deleteSubTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchActiveTasks,
    TResult? Function(TaskEntity newTask)? createTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(SubTaskEntity newSubTask)? createSubTask,
    TResult? Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult? Function(SubTaskEntity subTask)? updateSubTask,
    TResult? Function(String subTaskId)? deleteSubTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchActiveTasks,
    TResult Function(TaskEntity newTask)? createTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(SubTaskEntity newSubTask)? createSubTask,
    TResult Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult Function(SubTaskEntity subTask)? updateSubTask,
    TResult Function(String subTaskId)? deleteSubTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchActiveTasks value) fetchActiveTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_DeleteBatchSubTasksByTaskId value)
        deleteBatchSubTasksByTaskId,
    required TResult Function(_UpdateSubTask value) updateSubTask,
    required TResult Function(_DeleteSubTask value) deleteSubTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult? Function(_UpdateSubTask value)? updateSubTask,
    TResult? Function(_DeleteSubTask value)? deleteSubTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult Function(_UpdateSubTask value)? updateSubTask,
    TResult Function(_DeleteSubTask value)? deleteSubTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksManagerEventCopyWith<$Res> {
  factory $TasksManagerEventCopyWith(
          TasksManagerEvent value, $Res Function(TasksManagerEvent) then) =
      _$TasksManagerEventCopyWithImpl<$Res, TasksManagerEvent>;
}

/// @nodoc
class _$TasksManagerEventCopyWithImpl<$Res, $Val extends TasksManagerEvent>
    implements $TasksManagerEventCopyWith<$Res> {
  _$TasksManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TasksManagerEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchActiveTasks,
    required TResult Function(TaskEntity newTask) createTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(SubTaskEntity newSubTask) createSubTask,
    required TResult Function(String taskId) deleteBatchSubTasksByTaskId,
    required TResult Function(SubTaskEntity subTask) updateSubTask,
    required TResult Function(String subTaskId) deleteSubTask,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchActiveTasks,
    TResult? Function(TaskEntity newTask)? createTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(SubTaskEntity newSubTask)? createSubTask,
    TResult? Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult? Function(SubTaskEntity subTask)? updateSubTask,
    TResult? Function(String subTaskId)? deleteSubTask,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchActiveTasks,
    TResult Function(TaskEntity newTask)? createTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(SubTaskEntity newSubTask)? createSubTask,
    TResult Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult Function(SubTaskEntity subTask)? updateSubTask,
    TResult Function(String subTaskId)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchActiveTasks value) fetchActiveTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_DeleteBatchSubTasksByTaskId value)
        deleteBatchSubTasksByTaskId,
    required TResult Function(_UpdateSubTask value) updateSubTask,
    required TResult Function(_DeleteSubTask value) deleteSubTask,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult? Function(_UpdateSubTask value)? updateSubTask,
    TResult? Function(_DeleteSubTask value)? deleteSubTask,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult Function(_UpdateSubTask value)? updateSubTask,
    TResult Function(_DeleteSubTask value)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TasksManagerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchActiveTasksImplCopyWith<$Res> {
  factory _$$FetchActiveTasksImplCopyWith(_$FetchActiveTasksImpl value,
          $Res Function(_$FetchActiveTasksImpl) then) =
      __$$FetchActiveTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchActiveTasksImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res, _$FetchActiveTasksImpl>
    implements _$$FetchActiveTasksImplCopyWith<$Res> {
  __$$FetchActiveTasksImplCopyWithImpl(_$FetchActiveTasksImpl _value,
      $Res Function(_$FetchActiveTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchActiveTasksImpl implements _FetchActiveTasks {
  const _$FetchActiveTasksImpl();

  @override
  String toString() {
    return 'TasksManagerEvent.fetchActiveTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchActiveTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchActiveTasks,
    required TResult Function(TaskEntity newTask) createTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(SubTaskEntity newSubTask) createSubTask,
    required TResult Function(String taskId) deleteBatchSubTasksByTaskId,
    required TResult Function(SubTaskEntity subTask) updateSubTask,
    required TResult Function(String subTaskId) deleteSubTask,
  }) {
    return fetchActiveTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchActiveTasks,
    TResult? Function(TaskEntity newTask)? createTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(SubTaskEntity newSubTask)? createSubTask,
    TResult? Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult? Function(SubTaskEntity subTask)? updateSubTask,
    TResult? Function(String subTaskId)? deleteSubTask,
  }) {
    return fetchActiveTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchActiveTasks,
    TResult Function(TaskEntity newTask)? createTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(SubTaskEntity newSubTask)? createSubTask,
    TResult Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult Function(SubTaskEntity subTask)? updateSubTask,
    TResult Function(String subTaskId)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (fetchActiveTasks != null) {
      return fetchActiveTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchActiveTasks value) fetchActiveTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_DeleteBatchSubTasksByTaskId value)
        deleteBatchSubTasksByTaskId,
    required TResult Function(_UpdateSubTask value) updateSubTask,
    required TResult Function(_DeleteSubTask value) deleteSubTask,
  }) {
    return fetchActiveTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult? Function(_UpdateSubTask value)? updateSubTask,
    TResult? Function(_DeleteSubTask value)? deleteSubTask,
  }) {
    return fetchActiveTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult Function(_UpdateSubTask value)? updateSubTask,
    TResult Function(_DeleteSubTask value)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (fetchActiveTasks != null) {
      return fetchActiveTasks(this);
    }
    return orElse();
  }
}

abstract class _FetchActiveTasks implements TasksManagerEvent {
  const factory _FetchActiveTasks() = _$FetchActiveTasksImpl;
}

/// @nodoc
abstract class _$$CreateTaskImplCopyWith<$Res> {
  factory _$$CreateTaskImplCopyWith(
          _$CreateTaskImpl value, $Res Function(_$CreateTaskImpl) then) =
      __$$CreateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity newTask});
}

/// @nodoc
class __$$CreateTaskImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res, _$CreateTaskImpl>
    implements _$$CreateTaskImplCopyWith<$Res> {
  __$$CreateTaskImplCopyWithImpl(
      _$CreateTaskImpl _value, $Res Function(_$CreateTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTask = null,
  }) {
    return _then(_$CreateTaskImpl(
      newTask: null == newTask
          ? _value.newTask
          : newTask // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$CreateTaskImpl implements _CreateTask {
  const _$CreateTaskImpl({required this.newTask});

  @override
  final TaskEntity newTask;

  @override
  String toString() {
    return 'TasksManagerEvent.createTask(newTask: $newTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskImpl &&
            (identical(other.newTask, newTask) || other.newTask == newTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTask);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskImplCopyWith<_$CreateTaskImpl> get copyWith =>
      __$$CreateTaskImplCopyWithImpl<_$CreateTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchActiveTasks,
    required TResult Function(TaskEntity newTask) createTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(SubTaskEntity newSubTask) createSubTask,
    required TResult Function(String taskId) deleteBatchSubTasksByTaskId,
    required TResult Function(SubTaskEntity subTask) updateSubTask,
    required TResult Function(String subTaskId) deleteSubTask,
  }) {
    return createTask(newTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchActiveTasks,
    TResult? Function(TaskEntity newTask)? createTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(SubTaskEntity newSubTask)? createSubTask,
    TResult? Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult? Function(SubTaskEntity subTask)? updateSubTask,
    TResult? Function(String subTaskId)? deleteSubTask,
  }) {
    return createTask?.call(newTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchActiveTasks,
    TResult Function(TaskEntity newTask)? createTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(SubTaskEntity newSubTask)? createSubTask,
    TResult Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult Function(SubTaskEntity subTask)? updateSubTask,
    TResult Function(String subTaskId)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(newTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchActiveTasks value) fetchActiveTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_DeleteBatchSubTasksByTaskId value)
        deleteBatchSubTasksByTaskId,
    required TResult Function(_UpdateSubTask value) updateSubTask,
    required TResult Function(_DeleteSubTask value) deleteSubTask,
  }) {
    return createTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult? Function(_UpdateSubTask value)? updateSubTask,
    TResult? Function(_DeleteSubTask value)? deleteSubTask,
  }) {
    return createTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult Function(_UpdateSubTask value)? updateSubTask,
    TResult Function(_DeleteSubTask value)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(this);
    }
    return orElse();
  }
}

abstract class _CreateTask implements TasksManagerEvent {
  const factory _CreateTask({required final TaskEntity newTask}) =
      _$CreateTaskImpl;

  TaskEntity get newTask;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskImplCopyWith<_$CreateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$DeleteTaskImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTaskImpl implements _DeleteTask {
  const _$DeleteTaskImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'TasksManagerEvent.deleteTask(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchActiveTasks,
    required TResult Function(TaskEntity newTask) createTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(SubTaskEntity newSubTask) createSubTask,
    required TResult Function(String taskId) deleteBatchSubTasksByTaskId,
    required TResult Function(SubTaskEntity subTask) updateSubTask,
    required TResult Function(String subTaskId) deleteSubTask,
  }) {
    return deleteTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchActiveTasks,
    TResult? Function(TaskEntity newTask)? createTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(SubTaskEntity newSubTask)? createSubTask,
    TResult? Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult? Function(SubTaskEntity subTask)? updateSubTask,
    TResult? Function(String subTaskId)? deleteSubTask,
  }) {
    return deleteTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchActiveTasks,
    TResult Function(TaskEntity newTask)? createTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(SubTaskEntity newSubTask)? createSubTask,
    TResult Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult Function(SubTaskEntity subTask)? updateSubTask,
    TResult Function(String subTaskId)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchActiveTasks value) fetchActiveTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_DeleteBatchSubTasksByTaskId value)
        deleteBatchSubTasksByTaskId,
    required TResult Function(_UpdateSubTask value) updateSubTask,
    required TResult Function(_DeleteSubTask value) deleteSubTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult? Function(_UpdateSubTask value)? updateSubTask,
    TResult? Function(_DeleteSubTask value)? deleteSubTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult Function(_UpdateSubTask value)? updateSubTask,
    TResult Function(_DeleteSubTask value)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements TasksManagerEvent {
  const factory _DeleteTask({required final String taskId}) = _$DeleteTaskImpl;

  String get taskId;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskImplCopyWith<$Res> {
  factory _$$UpdateTaskImplCopyWith(
          _$UpdateTaskImpl value, $Res Function(_$UpdateTaskImpl) then) =
      __$$UpdateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$UpdateTaskImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res, _$UpdateTaskImpl>
    implements _$$UpdateTaskImplCopyWith<$Res> {
  __$$UpdateTaskImplCopyWithImpl(
      _$UpdateTaskImpl _value, $Res Function(_$UpdateTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$UpdateTaskImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$UpdateTaskImpl implements _UpdateTask {
  const _$UpdateTaskImpl({required this.task});

  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TasksManagerEvent.updateTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      __$$UpdateTaskImplCopyWithImpl<_$UpdateTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchActiveTasks,
    required TResult Function(TaskEntity newTask) createTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(SubTaskEntity newSubTask) createSubTask,
    required TResult Function(String taskId) deleteBatchSubTasksByTaskId,
    required TResult Function(SubTaskEntity subTask) updateSubTask,
    required TResult Function(String subTaskId) deleteSubTask,
  }) {
    return updateTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchActiveTasks,
    TResult? Function(TaskEntity newTask)? createTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(SubTaskEntity newSubTask)? createSubTask,
    TResult? Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult? Function(SubTaskEntity subTask)? updateSubTask,
    TResult? Function(String subTaskId)? deleteSubTask,
  }) {
    return updateTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchActiveTasks,
    TResult Function(TaskEntity newTask)? createTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(SubTaskEntity newSubTask)? createSubTask,
    TResult Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult Function(SubTaskEntity subTask)? updateSubTask,
    TResult Function(String subTaskId)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchActiveTasks value) fetchActiveTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_DeleteBatchSubTasksByTaskId value)
        deleteBatchSubTasksByTaskId,
    required TResult Function(_UpdateSubTask value) updateSubTask,
    required TResult Function(_DeleteSubTask value) deleteSubTask,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult? Function(_UpdateSubTask value)? updateSubTask,
    TResult? Function(_DeleteSubTask value)? deleteSubTask,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult Function(_UpdateSubTask value)? updateSubTask,
    TResult Function(_DeleteSubTask value)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class _UpdateTask implements TasksManagerEvent {
  const factory _UpdateTask({required final TaskEntity task}) =
      _$UpdateTaskImpl;

  TaskEntity get task;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateSubTaskImplCopyWith<$Res> {
  factory _$$CreateSubTaskImplCopyWith(
          _$CreateSubTaskImpl value, $Res Function(_$CreateSubTaskImpl) then) =
      __$$CreateSubTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubTaskEntity newSubTask});
}

/// @nodoc
class __$$CreateSubTaskImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res, _$CreateSubTaskImpl>
    implements _$$CreateSubTaskImplCopyWith<$Res> {
  __$$CreateSubTaskImplCopyWithImpl(
      _$CreateSubTaskImpl _value, $Res Function(_$CreateSubTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newSubTask = null,
  }) {
    return _then(_$CreateSubTaskImpl(
      newSubTask: null == newSubTask
          ? _value.newSubTask
          : newSubTask // ignore: cast_nullable_to_non_nullable
              as SubTaskEntity,
    ));
  }
}

/// @nodoc

class _$CreateSubTaskImpl implements _CreateSubTask {
  const _$CreateSubTaskImpl({required this.newSubTask});

  @override
  final SubTaskEntity newSubTask;

  @override
  String toString() {
    return 'TasksManagerEvent.createSubTask(newSubTask: $newSubTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSubTaskImpl &&
            (identical(other.newSubTask, newSubTask) ||
                other.newSubTask == newSubTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newSubTask);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSubTaskImplCopyWith<_$CreateSubTaskImpl> get copyWith =>
      __$$CreateSubTaskImplCopyWithImpl<_$CreateSubTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchActiveTasks,
    required TResult Function(TaskEntity newTask) createTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(SubTaskEntity newSubTask) createSubTask,
    required TResult Function(String taskId) deleteBatchSubTasksByTaskId,
    required TResult Function(SubTaskEntity subTask) updateSubTask,
    required TResult Function(String subTaskId) deleteSubTask,
  }) {
    return createSubTask(newSubTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchActiveTasks,
    TResult? Function(TaskEntity newTask)? createTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(SubTaskEntity newSubTask)? createSubTask,
    TResult? Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult? Function(SubTaskEntity subTask)? updateSubTask,
    TResult? Function(String subTaskId)? deleteSubTask,
  }) {
    return createSubTask?.call(newSubTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchActiveTasks,
    TResult Function(TaskEntity newTask)? createTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(SubTaskEntity newSubTask)? createSubTask,
    TResult Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult Function(SubTaskEntity subTask)? updateSubTask,
    TResult Function(String subTaskId)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (createSubTask != null) {
      return createSubTask(newSubTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchActiveTasks value) fetchActiveTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_DeleteBatchSubTasksByTaskId value)
        deleteBatchSubTasksByTaskId,
    required TResult Function(_UpdateSubTask value) updateSubTask,
    required TResult Function(_DeleteSubTask value) deleteSubTask,
  }) {
    return createSubTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult? Function(_UpdateSubTask value)? updateSubTask,
    TResult? Function(_DeleteSubTask value)? deleteSubTask,
  }) {
    return createSubTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult Function(_UpdateSubTask value)? updateSubTask,
    TResult Function(_DeleteSubTask value)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (createSubTask != null) {
      return createSubTask(this);
    }
    return orElse();
  }
}

abstract class _CreateSubTask implements TasksManagerEvent {
  const factory _CreateSubTask({required final SubTaskEntity newSubTask}) =
      _$CreateSubTaskImpl;

  SubTaskEntity get newSubTask;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSubTaskImplCopyWith<_$CreateSubTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBatchSubTasksByTaskIdImplCopyWith<$Res> {
  factory _$$DeleteBatchSubTasksByTaskIdImplCopyWith(
          _$DeleteBatchSubTasksByTaskIdImpl value,
          $Res Function(_$DeleteBatchSubTasksByTaskIdImpl) then) =
      __$$DeleteBatchSubTasksByTaskIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$DeleteBatchSubTasksByTaskIdImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res,
        _$DeleteBatchSubTasksByTaskIdImpl>
    implements _$$DeleteBatchSubTasksByTaskIdImplCopyWith<$Res> {
  __$$DeleteBatchSubTasksByTaskIdImplCopyWithImpl(
      _$DeleteBatchSubTasksByTaskIdImpl _value,
      $Res Function(_$DeleteBatchSubTasksByTaskIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$DeleteBatchSubTasksByTaskIdImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteBatchSubTasksByTaskIdImpl
    implements _DeleteBatchSubTasksByTaskId {
  const _$DeleteBatchSubTasksByTaskIdImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'TasksManagerEvent.deleteBatchSubTasksByTaskId(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBatchSubTasksByTaskIdImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBatchSubTasksByTaskIdImplCopyWith<_$DeleteBatchSubTasksByTaskIdImpl>
      get copyWith => __$$DeleteBatchSubTasksByTaskIdImplCopyWithImpl<
          _$DeleteBatchSubTasksByTaskIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchActiveTasks,
    required TResult Function(TaskEntity newTask) createTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(SubTaskEntity newSubTask) createSubTask,
    required TResult Function(String taskId) deleteBatchSubTasksByTaskId,
    required TResult Function(SubTaskEntity subTask) updateSubTask,
    required TResult Function(String subTaskId) deleteSubTask,
  }) {
    return deleteBatchSubTasksByTaskId(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchActiveTasks,
    TResult? Function(TaskEntity newTask)? createTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(SubTaskEntity newSubTask)? createSubTask,
    TResult? Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult? Function(SubTaskEntity subTask)? updateSubTask,
    TResult? Function(String subTaskId)? deleteSubTask,
  }) {
    return deleteBatchSubTasksByTaskId?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchActiveTasks,
    TResult Function(TaskEntity newTask)? createTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(SubTaskEntity newSubTask)? createSubTask,
    TResult Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult Function(SubTaskEntity subTask)? updateSubTask,
    TResult Function(String subTaskId)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (deleteBatchSubTasksByTaskId != null) {
      return deleteBatchSubTasksByTaskId(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchActiveTasks value) fetchActiveTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_DeleteBatchSubTasksByTaskId value)
        deleteBatchSubTasksByTaskId,
    required TResult Function(_UpdateSubTask value) updateSubTask,
    required TResult Function(_DeleteSubTask value) deleteSubTask,
  }) {
    return deleteBatchSubTasksByTaskId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult? Function(_UpdateSubTask value)? updateSubTask,
    TResult? Function(_DeleteSubTask value)? deleteSubTask,
  }) {
    return deleteBatchSubTasksByTaskId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult Function(_UpdateSubTask value)? updateSubTask,
    TResult Function(_DeleteSubTask value)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (deleteBatchSubTasksByTaskId != null) {
      return deleteBatchSubTasksByTaskId(this);
    }
    return orElse();
  }
}

abstract class _DeleteBatchSubTasksByTaskId implements TasksManagerEvent {
  const factory _DeleteBatchSubTasksByTaskId({required final String taskId}) =
      _$DeleteBatchSubTasksByTaskIdImpl;

  String get taskId;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBatchSubTasksByTaskIdImplCopyWith<_$DeleteBatchSubTasksByTaskIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSubTaskImplCopyWith<$Res> {
  factory _$$UpdateSubTaskImplCopyWith(
          _$UpdateSubTaskImpl value, $Res Function(_$UpdateSubTaskImpl) then) =
      __$$UpdateSubTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubTaskEntity subTask});
}

/// @nodoc
class __$$UpdateSubTaskImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res, _$UpdateSubTaskImpl>
    implements _$$UpdateSubTaskImplCopyWith<$Res> {
  __$$UpdateSubTaskImplCopyWithImpl(
      _$UpdateSubTaskImpl _value, $Res Function(_$UpdateSubTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subTask = null,
  }) {
    return _then(_$UpdateSubTaskImpl(
      subTask: null == subTask
          ? _value.subTask
          : subTask // ignore: cast_nullable_to_non_nullable
              as SubTaskEntity,
    ));
  }
}

/// @nodoc

class _$UpdateSubTaskImpl implements _UpdateSubTask {
  const _$UpdateSubTaskImpl({required this.subTask});

  @override
  final SubTaskEntity subTask;

  @override
  String toString() {
    return 'TasksManagerEvent.updateSubTask(subTask: $subTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSubTaskImpl &&
            (identical(other.subTask, subTask) || other.subTask == subTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subTask);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSubTaskImplCopyWith<_$UpdateSubTaskImpl> get copyWith =>
      __$$UpdateSubTaskImplCopyWithImpl<_$UpdateSubTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchActiveTasks,
    required TResult Function(TaskEntity newTask) createTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(SubTaskEntity newSubTask) createSubTask,
    required TResult Function(String taskId) deleteBatchSubTasksByTaskId,
    required TResult Function(SubTaskEntity subTask) updateSubTask,
    required TResult Function(String subTaskId) deleteSubTask,
  }) {
    return updateSubTask(subTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchActiveTasks,
    TResult? Function(TaskEntity newTask)? createTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(SubTaskEntity newSubTask)? createSubTask,
    TResult? Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult? Function(SubTaskEntity subTask)? updateSubTask,
    TResult? Function(String subTaskId)? deleteSubTask,
  }) {
    return updateSubTask?.call(subTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchActiveTasks,
    TResult Function(TaskEntity newTask)? createTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(SubTaskEntity newSubTask)? createSubTask,
    TResult Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult Function(SubTaskEntity subTask)? updateSubTask,
    TResult Function(String subTaskId)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (updateSubTask != null) {
      return updateSubTask(subTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchActiveTasks value) fetchActiveTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_DeleteBatchSubTasksByTaskId value)
        deleteBatchSubTasksByTaskId,
    required TResult Function(_UpdateSubTask value) updateSubTask,
    required TResult Function(_DeleteSubTask value) deleteSubTask,
  }) {
    return updateSubTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult? Function(_UpdateSubTask value)? updateSubTask,
    TResult? Function(_DeleteSubTask value)? deleteSubTask,
  }) {
    return updateSubTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult Function(_UpdateSubTask value)? updateSubTask,
    TResult Function(_DeleteSubTask value)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (updateSubTask != null) {
      return updateSubTask(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubTask implements TasksManagerEvent {
  const factory _UpdateSubTask({required final SubTaskEntity subTask}) =
      _$UpdateSubTaskImpl;

  SubTaskEntity get subTask;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSubTaskImplCopyWith<_$UpdateSubTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSubTaskImplCopyWith<$Res> {
  factory _$$DeleteSubTaskImplCopyWith(
          _$DeleteSubTaskImpl value, $Res Function(_$DeleteSubTaskImpl) then) =
      __$$DeleteSubTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subTaskId});
}

/// @nodoc
class __$$DeleteSubTaskImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res, _$DeleteSubTaskImpl>
    implements _$$DeleteSubTaskImplCopyWith<$Res> {
  __$$DeleteSubTaskImplCopyWithImpl(
      _$DeleteSubTaskImpl _value, $Res Function(_$DeleteSubTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subTaskId = null,
  }) {
    return _then(_$DeleteSubTaskImpl(
      subTaskId: null == subTaskId
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteSubTaskImpl implements _DeleteSubTask {
  const _$DeleteSubTaskImpl({required this.subTaskId});

  @override
  final String subTaskId;

  @override
  String toString() {
    return 'TasksManagerEvent.deleteSubTask(subTaskId: $subTaskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSubTaskImpl &&
            (identical(other.subTaskId, subTaskId) ||
                other.subTaskId == subTaskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subTaskId);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSubTaskImplCopyWith<_$DeleteSubTaskImpl> get copyWith =>
      __$$DeleteSubTaskImplCopyWithImpl<_$DeleteSubTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchActiveTasks,
    required TResult Function(TaskEntity newTask) createTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(SubTaskEntity newSubTask) createSubTask,
    required TResult Function(String taskId) deleteBatchSubTasksByTaskId,
    required TResult Function(SubTaskEntity subTask) updateSubTask,
    required TResult Function(String subTaskId) deleteSubTask,
  }) {
    return deleteSubTask(subTaskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchActiveTasks,
    TResult? Function(TaskEntity newTask)? createTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(SubTaskEntity newSubTask)? createSubTask,
    TResult? Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult? Function(SubTaskEntity subTask)? updateSubTask,
    TResult? Function(String subTaskId)? deleteSubTask,
  }) {
    return deleteSubTask?.call(subTaskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchActiveTasks,
    TResult Function(TaskEntity newTask)? createTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(SubTaskEntity newSubTask)? createSubTask,
    TResult Function(String taskId)? deleteBatchSubTasksByTaskId,
    TResult Function(SubTaskEntity subTask)? updateSubTask,
    TResult Function(String subTaskId)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (deleteSubTask != null) {
      return deleteSubTask(subTaskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchActiveTasks value) fetchActiveTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_DeleteBatchSubTasksByTaskId value)
        deleteBatchSubTasksByTaskId,
    required TResult Function(_UpdateSubTask value) updateSubTask,
    required TResult Function(_DeleteSubTask value) deleteSubTask,
  }) {
    return deleteSubTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult? Function(_UpdateSubTask value)? updateSubTask,
    TResult? Function(_DeleteSubTask value)? deleteSubTask,
  }) {
    return deleteSubTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchActiveTasks value)? fetchActiveTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_DeleteBatchSubTasksByTaskId value)?
        deleteBatchSubTasksByTaskId,
    TResult Function(_UpdateSubTask value)? updateSubTask,
    TResult Function(_DeleteSubTask value)? deleteSubTask,
    required TResult orElse(),
  }) {
    if (deleteSubTask != null) {
      return deleteSubTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteSubTask implements TasksManagerEvent {
  const factory _DeleteSubTask({required final String subTaskId}) =
      _$DeleteSubTaskImpl;

  String get subTaskId;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteSubTaskImplCopyWith<_$DeleteSubTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksManagerStateCopyWith<$Res> {
  factory $TasksManagerStateCopyWith(
          TasksManagerState value, $Res Function(TasksManagerState) then) =
      _$TasksManagerStateCopyWithImpl<$Res, TasksManagerState>;
}

/// @nodoc
class _$TasksManagerStateCopyWithImpl<$Res, $Val extends TasksManagerState>
    implements $TasksManagerStateCopyWith<$Res> {
  _$TasksManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TasksManagerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TasksManagerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TasksManagerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TasksManagerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessfulActionImplCopyWith<$Res> {
  factory _$$SuccessfulActionImplCopyWith(_$SuccessfulActionImpl value,
          $Res Function(_$SuccessfulActionImpl) then) =
      __$$SuccessfulActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage});
}

/// @nodoc
class __$$SuccessfulActionImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$SuccessfulActionImpl>
    implements _$$SuccessfulActionImplCopyWith<$Res> {
  __$$SuccessfulActionImplCopyWithImpl(_$SuccessfulActionImpl _value,
      $Res Function(_$SuccessfulActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
  }) {
    return _then(_$SuccessfulActionImpl(
      null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessfulActionImpl implements _SuccessfulAction {
  const _$SuccessfulActionImpl(this.successMessage);

  @override
  final String successMessage;

  @override
  String toString() {
    return 'TasksManagerState.successfulAction(successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulActionImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulActionImplCopyWith<_$SuccessfulActionImpl> get copyWith =>
      __$$SuccessfulActionImplCopyWithImpl<_$SuccessfulActionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) {
    return successfulAction(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) {
    return successfulAction?.call(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (successfulAction != null) {
      return successfulAction(successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) {
    return successfulAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) {
    return successfulAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (successfulAction != null) {
      return successfulAction(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulAction implements TasksManagerState {
  const factory _SuccessfulAction(final String successMessage) =
      _$SuccessfulActionImpl;

  String get successMessage;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessfulActionImplCopyWith<_$SuccessfulActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedActionImplCopyWith<$Res> {
  factory _$$FailedActionImplCopyWith(
          _$FailedActionImpl value, $Res Function(_$FailedActionImpl) then) =
      __$$FailedActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailedActionImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$FailedActionImpl>
    implements _$$FailedActionImplCopyWith<$Res> {
  __$$FailedActionImplCopyWithImpl(
      _$FailedActionImpl _value, $Res Function(_$FailedActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailedActionImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedActionImpl implements _FailedAction {
  const _$FailedActionImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TasksManagerState.failedAction(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedActionImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedActionImplCopyWith<_$FailedActionImpl> get copyWith =>
      __$$FailedActionImplCopyWithImpl<_$FailedActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) {
    return failedAction(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) {
    return failedAction?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (failedAction != null) {
      return failedAction(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) {
    return failedAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) {
    return failedAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (failedAction != null) {
      return failedAction(this);
    }
    return orElse();
  }
}

abstract class _FailedAction implements TasksManagerState {
  const factory _FailedAction(final String errorMessage) = _$FailedActionImpl;

  String get errorMessage;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedActionImplCopyWith<_$FailedActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskCreatedImplCopyWith<$Res> {
  factory _$$TaskCreatedImplCopyWith(
          _$TaskCreatedImpl value, $Res Function(_$TaskCreatedImpl) then) =
      __$$TaskCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$TaskCreatedImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$TaskCreatedImpl>
    implements _$$TaskCreatedImplCopyWith<$Res> {
  __$$TaskCreatedImplCopyWithImpl(
      _$TaskCreatedImpl _value, $Res Function(_$TaskCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$TaskCreatedImpl(
      null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskCreatedImpl implements _TaskCreated {
  const _$TaskCreatedImpl(this.taskId);

  @override
  final String taskId;

  @override
  String toString() {
    return 'TasksManagerState.taskCreated(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreatedImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskCreatedImplCopyWith<_$TaskCreatedImpl> get copyWith =>
      __$$TaskCreatedImplCopyWithImpl<_$TaskCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) {
    return taskCreated(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) {
    return taskCreated?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (taskCreated != null) {
      return taskCreated(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) {
    return taskCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) {
    return taskCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (taskCreated != null) {
      return taskCreated(this);
    }
    return orElse();
  }
}

abstract class _TaskCreated implements TasksManagerState {
  const factory _TaskCreated(final String taskId) = _$TaskCreatedImpl;

  String get taskId;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskCreatedImplCopyWith<_$TaskCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedTasksImplCopyWith<$Res> {
  factory _$$FetchedTasksImplCopyWith(
          _$FetchedTasksImpl value, $Res Function(_$FetchedTasksImpl) then) =
      __$$FetchedTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskEntity> tasks, List<SubTaskEntity> subTasks});
}

/// @nodoc
class __$$FetchedTasksImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$FetchedTasksImpl>
    implements _$$FetchedTasksImplCopyWith<$Res> {
  __$$FetchedTasksImplCopyWithImpl(
      _$FetchedTasksImpl _value, $Res Function(_$FetchedTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? subTasks = null,
  }) {
    return _then(_$FetchedTasksImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      subTasks: null == subTasks
          ? _value._subTasks
          : subTasks // ignore: cast_nullable_to_non_nullable
              as List<SubTaskEntity>,
    ));
  }
}

/// @nodoc

class _$FetchedTasksImpl implements _FetchedTasks {
  const _$FetchedTasksImpl(
      {required final List<TaskEntity> tasks,
      required final List<SubTaskEntity> subTasks})
      : _tasks = tasks,
        _subTasks = subTasks;

  final List<TaskEntity> _tasks;
  @override
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<SubTaskEntity> _subTasks;
  @override
  List<SubTaskEntity> get subTasks {
    if (_subTasks is EqualUnmodifiableListView) return _subTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subTasks);
  }

  @override
  String toString() {
    return 'TasksManagerState.fetchedTasks(tasks: $tasks, subTasks: $subTasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedTasksImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other._subTasks, _subTasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_subTasks));

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedTasksImplCopyWith<_$FetchedTasksImpl> get copyWith =>
      __$$FetchedTasksImplCopyWithImpl<_$FetchedTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) {
    return fetchedTasks(tasks, subTasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) {
    return fetchedTasks?.call(tasks, subTasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (fetchedTasks != null) {
      return fetchedTasks(tasks, subTasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) {
    return fetchedTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) {
    return fetchedTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (fetchedTasks != null) {
      return fetchedTasks(this);
    }
    return orElse();
  }
}

abstract class _FetchedTasks implements TasksManagerState {
  const factory _FetchedTasks(
      {required final List<TaskEntity> tasks,
      required final List<SubTaskEntity> subTasks}) = _$FetchedTasksImpl;

  List<TaskEntity> get tasks;
  List<SubTaskEntity> get subTasks;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedTasksImplCopyWith<_$FetchedTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskUpdatedImplCopyWith<$Res> {
  factory _$$TaskUpdatedImplCopyWith(
          _$TaskUpdatedImpl value, $Res Function(_$TaskUpdatedImpl) then) =
      __$$TaskUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskUpdatedImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$TaskUpdatedImpl>
    implements _$$TaskUpdatedImplCopyWith<$Res> {
  __$$TaskUpdatedImplCopyWithImpl(
      _$TaskUpdatedImpl _value, $Res Function(_$TaskUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskUpdatedImpl implements _TaskUpdated {
  const _$TaskUpdatedImpl();

  @override
  String toString() {
    return 'TasksManagerState.taskUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) {
    return taskUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) {
    return taskUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (taskUpdated != null) {
      return taskUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) {
    return taskUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) {
    return taskUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (taskUpdated != null) {
      return taskUpdated(this);
    }
    return orElse();
  }
}

abstract class _TaskUpdated implements TasksManagerState {
  const factory _TaskUpdated() = _$TaskUpdatedImpl;
}

/// @nodoc
abstract class _$$SubTaskCreatedImplCopyWith<$Res> {
  factory _$$SubTaskCreatedImplCopyWith(_$SubTaskCreatedImpl value,
          $Res Function(_$SubTaskCreatedImpl) then) =
      __$$SubTaskCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subTaskId});
}

/// @nodoc
class __$$SubTaskCreatedImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$SubTaskCreatedImpl>
    implements _$$SubTaskCreatedImplCopyWith<$Res> {
  __$$SubTaskCreatedImplCopyWithImpl(
      _$SubTaskCreatedImpl _value, $Res Function(_$SubTaskCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subTaskId = null,
  }) {
    return _then(_$SubTaskCreatedImpl(
      null == subTaskId
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubTaskCreatedImpl implements _SubTaskCreated {
  const _$SubTaskCreatedImpl(this.subTaskId);

  @override
  final String subTaskId;

  @override
  String toString() {
    return 'TasksManagerState.subTaskCreated(subTaskId: $subTaskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubTaskCreatedImpl &&
            (identical(other.subTaskId, subTaskId) ||
                other.subTaskId == subTaskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subTaskId);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubTaskCreatedImplCopyWith<_$SubTaskCreatedImpl> get copyWith =>
      __$$SubTaskCreatedImplCopyWithImpl<_$SubTaskCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) {
    return subTaskCreated(subTaskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) {
    return subTaskCreated?.call(subTaskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (subTaskCreated != null) {
      return subTaskCreated(subTaskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) {
    return subTaskCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) {
    return subTaskCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (subTaskCreated != null) {
      return subTaskCreated(this);
    }
    return orElse();
  }
}

abstract class _SubTaskCreated implements TasksManagerState {
  const factory _SubTaskCreated(final String subTaskId) = _$SubTaskCreatedImpl;

  String get subTaskId;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubTaskCreatedImplCopyWith<_$SubTaskCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubTaskUpdatedImplCopyWith<$Res> {
  factory _$$SubTaskUpdatedImplCopyWith(_$SubTaskUpdatedImpl value,
          $Res Function(_$SubTaskUpdatedImpl) then) =
      __$$SubTaskUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subTaskId});
}

/// @nodoc
class __$$SubTaskUpdatedImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$SubTaskUpdatedImpl>
    implements _$$SubTaskUpdatedImplCopyWith<$Res> {
  __$$SubTaskUpdatedImplCopyWithImpl(
      _$SubTaskUpdatedImpl _value, $Res Function(_$SubTaskUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subTaskId = null,
  }) {
    return _then(_$SubTaskUpdatedImpl(
      null == subTaskId
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubTaskUpdatedImpl implements _SubTaskUpdated {
  const _$SubTaskUpdatedImpl(this.subTaskId);

  @override
  final String subTaskId;

  @override
  String toString() {
    return 'TasksManagerState.subTaskUpdated(subTaskId: $subTaskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubTaskUpdatedImpl &&
            (identical(other.subTaskId, subTaskId) ||
                other.subTaskId == subTaskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subTaskId);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubTaskUpdatedImplCopyWith<_$SubTaskUpdatedImpl> get copyWith =>
      __$$SubTaskUpdatedImplCopyWithImpl<_$SubTaskUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) {
    return subTaskUpdated(subTaskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) {
    return subTaskUpdated?.call(subTaskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (subTaskUpdated != null) {
      return subTaskUpdated(subTaskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) {
    return subTaskUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) {
    return subTaskUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (subTaskUpdated != null) {
      return subTaskUpdated(this);
    }
    return orElse();
  }
}

abstract class _SubTaskUpdated implements TasksManagerState {
  const factory _SubTaskUpdated(final String subTaskId) = _$SubTaskUpdatedImpl;

  String get subTaskId;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubTaskUpdatedImplCopyWith<_$SubTaskUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubTaskDeletedImplCopyWith<$Res> {
  factory _$$SubTaskDeletedImplCopyWith(_$SubTaskDeletedImpl value,
          $Res Function(_$SubTaskDeletedImpl) then) =
      __$$SubTaskDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subTaskId});
}

/// @nodoc
class __$$SubTaskDeletedImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$SubTaskDeletedImpl>
    implements _$$SubTaskDeletedImplCopyWith<$Res> {
  __$$SubTaskDeletedImplCopyWithImpl(
      _$SubTaskDeletedImpl _value, $Res Function(_$SubTaskDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subTaskId = null,
  }) {
    return _then(_$SubTaskDeletedImpl(
      null == subTaskId
          ? _value.subTaskId
          : subTaskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubTaskDeletedImpl implements _SubTaskDeleted {
  const _$SubTaskDeletedImpl(this.subTaskId);

  @override
  final String subTaskId;

  @override
  String toString() {
    return 'TasksManagerState.subTaskDeleted(subTaskId: $subTaskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubTaskDeletedImpl &&
            (identical(other.subTaskId, subTaskId) ||
                other.subTaskId == subTaskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subTaskId);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubTaskDeletedImplCopyWith<_$SubTaskDeletedImpl> get copyWith =>
      __$$SubTaskDeletedImplCopyWithImpl<_$SubTaskDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(String taskId) taskCreated,
    required TResult Function(
            List<TaskEntity> tasks, List<SubTaskEntity> subTasks)
        fetchedTasks,
    required TResult Function() taskUpdated,
    required TResult Function(String subTaskId) subTaskCreated,
    required TResult Function(String subTaskId) subTaskUpdated,
    required TResult Function(String subTaskId) subTaskDeleted,
  }) {
    return subTaskDeleted(subTaskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(String taskId)? taskCreated,
    TResult? Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult? Function()? taskUpdated,
    TResult? Function(String subTaskId)? subTaskCreated,
    TResult? Function(String subTaskId)? subTaskUpdated,
    TResult? Function(String subTaskId)? subTaskDeleted,
  }) {
    return subTaskDeleted?.call(subTaskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(String taskId)? taskCreated,
    TResult Function(List<TaskEntity> tasks, List<SubTaskEntity> subTasks)?
        fetchedTasks,
    TResult Function()? taskUpdated,
    TResult Function(String subTaskId)? subTaskCreated,
    TResult Function(String subTaskId)? subTaskUpdated,
    TResult Function(String subTaskId)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (subTaskDeleted != null) {
      return subTaskDeleted(subTaskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TaskCreated value) taskCreated,
    required TResult Function(_FetchedTasks value) fetchedTasks,
    required TResult Function(_TaskUpdated value) taskUpdated,
    required TResult Function(_SubTaskCreated value) subTaskCreated,
    required TResult Function(_SubTaskUpdated value) subTaskUpdated,
    required TResult Function(_SubTaskDeleted value) subTaskDeleted,
  }) {
    return subTaskDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TaskCreated value)? taskCreated,
    TResult? Function(_FetchedTasks value)? fetchedTasks,
    TResult? Function(_TaskUpdated value)? taskUpdated,
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
    TResult? Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult? Function(_SubTaskDeleted value)? subTaskDeleted,
  }) {
    return subTaskDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TaskCreated value)? taskCreated,
    TResult Function(_FetchedTasks value)? fetchedTasks,
    TResult Function(_TaskUpdated value)? taskUpdated,
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    TResult Function(_SubTaskUpdated value)? subTaskUpdated,
    TResult Function(_SubTaskDeleted value)? subTaskDeleted,
    required TResult orElse(),
  }) {
    if (subTaskDeleted != null) {
      return subTaskDeleted(this);
    }
    return orElse();
  }
}

abstract class _SubTaskDeleted implements TasksManagerState {
  const factory _SubTaskDeleted(final String subTaskId) = _$SubTaskDeletedImpl;

  String get subTaskId;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubTaskDeletedImplCopyWith<_$SubTaskDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
