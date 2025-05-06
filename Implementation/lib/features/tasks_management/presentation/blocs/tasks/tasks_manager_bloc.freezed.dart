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
    required TResult Function(TaskVM newTask) createTask,
    required TResult Function(SubTaskVM newSubTask) createSubTask,
    required TResult Function() fetchAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskVM newTask)? createTask,
    TResult? Function(SubTaskVM newSubTask)? createSubTask,
    TResult? Function()? fetchAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskVM newTask)? createTask,
    TResult Function(SubTaskVM newSubTask)? createSubTask,
    TResult Function()? fetchAllTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
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
    required TResult Function(TaskVM newTask) createTask,
    required TResult Function(SubTaskVM newSubTask) createSubTask,
    required TResult Function() fetchAllTasks,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskVM newTask)? createTask,
    TResult? Function(SubTaskVM newSubTask)? createSubTask,
    TResult? Function()? fetchAllTasks,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskVM newTask)? createTask,
    TResult Function(SubTaskVM newSubTask)? createSubTask,
    TResult Function()? fetchAllTasks,
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
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
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
abstract class _$$CreateTaskImplCopyWith<$Res> {
  factory _$$CreateTaskImplCopyWith(
          _$CreateTaskImpl value, $Res Function(_$CreateTaskImpl) then) =
      __$$CreateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskVM newTask});
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
              as TaskVM,
    ));
  }
}

/// @nodoc

class _$CreateTaskImpl implements _CreateTask {
  const _$CreateTaskImpl({required this.newTask});

  @override
  final TaskVM newTask;

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
    required TResult Function(TaskVM newTask) createTask,
    required TResult Function(SubTaskVM newSubTask) createSubTask,
    required TResult Function() fetchAllTasks,
  }) {
    return createTask(newTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskVM newTask)? createTask,
    TResult? Function(SubTaskVM newSubTask)? createSubTask,
    TResult? Function()? fetchAllTasks,
  }) {
    return createTask?.call(newTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskVM newTask)? createTask,
    TResult Function(SubTaskVM newSubTask)? createSubTask,
    TResult Function()? fetchAllTasks,
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
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
  }) {
    return createTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
  }) {
    return createTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(this);
    }
    return orElse();
  }
}

abstract class _CreateTask implements TasksManagerEvent {
  const factory _CreateTask({required final TaskVM newTask}) = _$CreateTaskImpl;

  TaskVM get newTask;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskImplCopyWith<_$CreateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateSubTaskImplCopyWith<$Res> {
  factory _$$CreateSubTaskImplCopyWith(
          _$CreateSubTaskImpl value, $Res Function(_$CreateSubTaskImpl) then) =
      __$$CreateSubTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubTaskVM newSubTask});
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
              as SubTaskVM,
    ));
  }
}

/// @nodoc

class _$CreateSubTaskImpl implements _CreateSubTask {
  const _$CreateSubTaskImpl({required this.newSubTask});

  @override
  final SubTaskVM newSubTask;

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
    required TResult Function(TaskVM newTask) createTask,
    required TResult Function(SubTaskVM newSubTask) createSubTask,
    required TResult Function() fetchAllTasks,
  }) {
    return createSubTask(newSubTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskVM newTask)? createTask,
    TResult? Function(SubTaskVM newSubTask)? createSubTask,
    TResult? Function()? fetchAllTasks,
  }) {
    return createSubTask?.call(newSubTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskVM newTask)? createTask,
    TResult Function(SubTaskVM newSubTask)? createSubTask,
    TResult Function()? fetchAllTasks,
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
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
  }) {
    return createSubTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
  }) {
    return createSubTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    required TResult orElse(),
  }) {
    if (createSubTask != null) {
      return createSubTask(this);
    }
    return orElse();
  }
}

abstract class _CreateSubTask implements TasksManagerEvent {
  const factory _CreateSubTask({required final SubTaskVM newSubTask}) =
      _$CreateSubTaskImpl;

  SubTaskVM get newSubTask;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSubTaskImplCopyWith<_$CreateSubTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllTasksImplCopyWith<$Res> {
  factory _$$FetchAllTasksImplCopyWith(
          _$FetchAllTasksImpl value, $Res Function(_$FetchAllTasksImpl) then) =
      __$$FetchAllTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllTasksImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res, _$FetchAllTasksImpl>
    implements _$$FetchAllTasksImplCopyWith<$Res> {
  __$$FetchAllTasksImplCopyWithImpl(
      _$FetchAllTasksImpl _value, $Res Function(_$FetchAllTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllTasksImpl implements _FetchAllTasks {
  const _$FetchAllTasksImpl();

  @override
  String toString() {
    return 'TasksManagerEvent.fetchAllTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TaskVM newTask) createTask,
    required TResult Function(SubTaskVM newSubTask) createSubTask,
    required TResult Function() fetchAllTasks,
  }) {
    return fetchAllTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TaskVM newTask)? createTask,
    TResult? Function(SubTaskVM newSubTask)? createSubTask,
    TResult? Function()? fetchAllTasks,
  }) {
    return fetchAllTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TaskVM newTask)? createTask,
    TResult Function(SubTaskVM newSubTask)? createSubTask,
    TResult Function()? fetchAllTasks,
    required TResult orElse(),
  }) {
    if (fetchAllTasks != null) {
      return fetchAllTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_CreateSubTask value) createSubTask,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
  }) {
    return fetchAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_CreateSubTask value)? createSubTask,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
  }) {
    return fetchAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_CreateSubTask value)? createSubTask,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    required TResult orElse(),
  }) {
    if (fetchAllTasks != null) {
      return fetchAllTasks(this);
    }
    return orElse();
  }
}

abstract class _FetchAllTasks implements TasksManagerEvent {
  const factory _FetchAllTasks() = _$FetchAllTasksImpl;
}

/// @nodoc
mixin _$TasksManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function() taskCreated,
    required TResult Function(List<TaskVM> tasks) fetchedTasks,
    required TResult Function() subTaskCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function()? taskCreated,
    TResult? Function(List<TaskVM> tasks)? fetchedTasks,
    TResult? Function()? subTaskCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function()? taskCreated,
    TResult Function(List<TaskVM> tasks)? fetchedTasks,
    TResult Function()? subTaskCreated,
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
    required TResult Function(_SubTaskCreated value) subTaskCreated,
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
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
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
    TResult Function(_SubTaskCreated value)? subTaskCreated,
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
    required TResult Function() taskCreated,
    required TResult Function(List<TaskVM> tasks) fetchedTasks,
    required TResult Function() subTaskCreated,
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
    TResult? Function()? taskCreated,
    TResult? Function(List<TaskVM> tasks)? fetchedTasks,
    TResult? Function()? subTaskCreated,
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
    TResult Function()? taskCreated,
    TResult Function(List<TaskVM> tasks)? fetchedTasks,
    TResult Function()? subTaskCreated,
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
    required TResult Function(_SubTaskCreated value) subTaskCreated,
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
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
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
    TResult Function(_SubTaskCreated value)? subTaskCreated,
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
    required TResult Function() taskCreated,
    required TResult Function(List<TaskVM> tasks) fetchedTasks,
    required TResult Function() subTaskCreated,
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
    TResult? Function()? taskCreated,
    TResult? Function(List<TaskVM> tasks)? fetchedTasks,
    TResult? Function()? subTaskCreated,
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
    TResult Function()? taskCreated,
    TResult Function(List<TaskVM> tasks)? fetchedTasks,
    TResult Function()? subTaskCreated,
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
    required TResult Function(_SubTaskCreated value) subTaskCreated,
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
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
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
    TResult Function(_SubTaskCreated value)? subTaskCreated,
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
    required TResult Function() taskCreated,
    required TResult Function(List<TaskVM> tasks) fetchedTasks,
    required TResult Function() subTaskCreated,
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
    TResult? Function()? taskCreated,
    TResult? Function(List<TaskVM> tasks)? fetchedTasks,
    TResult? Function()? subTaskCreated,
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
    TResult Function()? taskCreated,
    TResult Function(List<TaskVM> tasks)? fetchedTasks,
    TResult Function()? subTaskCreated,
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
    required TResult Function(_SubTaskCreated value) subTaskCreated,
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
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
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
    TResult Function(_SubTaskCreated value)? subTaskCreated,
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
    required TResult Function() taskCreated,
    required TResult Function(List<TaskVM> tasks) fetchedTasks,
    required TResult Function() subTaskCreated,
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
    TResult? Function()? taskCreated,
    TResult? Function(List<TaskVM> tasks)? fetchedTasks,
    TResult? Function()? subTaskCreated,
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
    TResult Function()? taskCreated,
    TResult Function(List<TaskVM> tasks)? fetchedTasks,
    TResult Function()? subTaskCreated,
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
    required TResult Function(_SubTaskCreated value) subTaskCreated,
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
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
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
    TResult Function(_SubTaskCreated value)? subTaskCreated,
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
}

/// @nodoc

class _$TaskCreatedImpl implements _TaskCreated {
  const _$TaskCreatedImpl();

  @override
  String toString() {
    return 'TasksManagerState.taskCreated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskCreatedImpl);
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
    required TResult Function() taskCreated,
    required TResult Function(List<TaskVM> tasks) fetchedTasks,
    required TResult Function() subTaskCreated,
  }) {
    return taskCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function()? taskCreated,
    TResult? Function(List<TaskVM> tasks)? fetchedTasks,
    TResult? Function()? subTaskCreated,
  }) {
    return taskCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function()? taskCreated,
    TResult Function(List<TaskVM> tasks)? fetchedTasks,
    TResult Function()? subTaskCreated,
    required TResult orElse(),
  }) {
    if (taskCreated != null) {
      return taskCreated();
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
    required TResult Function(_SubTaskCreated value) subTaskCreated,
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
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
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
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    required TResult orElse(),
  }) {
    if (taskCreated != null) {
      return taskCreated(this);
    }
    return orElse();
  }
}

abstract class _TaskCreated implements TasksManagerState {
  const factory _TaskCreated() = _$TaskCreatedImpl;
}

/// @nodoc
abstract class _$$FetchedTasksImplCopyWith<$Res> {
  factory _$$FetchedTasksImplCopyWith(
          _$FetchedTasksImpl value, $Res Function(_$FetchedTasksImpl) then) =
      __$$FetchedTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskVM> tasks});
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
  }) {
    return _then(_$FetchedTasksImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskVM>,
    ));
  }
}

/// @nodoc

class _$FetchedTasksImpl implements _FetchedTasks {
  const _$FetchedTasksImpl(final List<TaskVM> tasks) : _tasks = tasks;

  final List<TaskVM> _tasks;
  @override
  List<TaskVM> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksManagerState.fetchedTasks(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedTasksImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

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
    required TResult Function() taskCreated,
    required TResult Function(List<TaskVM> tasks) fetchedTasks,
    required TResult Function() subTaskCreated,
  }) {
    return fetchedTasks(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function()? taskCreated,
    TResult? Function(List<TaskVM> tasks)? fetchedTasks,
    TResult? Function()? subTaskCreated,
  }) {
    return fetchedTasks?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function()? taskCreated,
    TResult Function(List<TaskVM> tasks)? fetchedTasks,
    TResult Function()? subTaskCreated,
    required TResult orElse(),
  }) {
    if (fetchedTasks != null) {
      return fetchedTasks(tasks);
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
    required TResult Function(_SubTaskCreated value) subTaskCreated,
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
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
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
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    required TResult orElse(),
  }) {
    if (fetchedTasks != null) {
      return fetchedTasks(this);
    }
    return orElse();
  }
}

abstract class _FetchedTasks implements TasksManagerState {
  const factory _FetchedTasks(final List<TaskVM> tasks) = _$FetchedTasksImpl;

  List<TaskVM> get tasks;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedTasksImplCopyWith<_$FetchedTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubTaskCreatedImplCopyWith<$Res> {
  factory _$$SubTaskCreatedImplCopyWith(_$SubTaskCreatedImpl value,
          $Res Function(_$SubTaskCreatedImpl) then) =
      __$$SubTaskCreatedImplCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$SubTaskCreatedImpl implements _SubTaskCreated {
  const _$SubTaskCreatedImpl();

  @override
  String toString() {
    return 'TasksManagerState.subTaskCreated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubTaskCreatedImpl);
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
    required TResult Function() taskCreated,
    required TResult Function(List<TaskVM> tasks) fetchedTasks,
    required TResult Function() subTaskCreated,
  }) {
    return subTaskCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function()? taskCreated,
    TResult? Function(List<TaskVM> tasks)? fetchedTasks,
    TResult? Function()? subTaskCreated,
  }) {
    return subTaskCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function()? taskCreated,
    TResult Function(List<TaskVM> tasks)? fetchedTasks,
    TResult Function()? subTaskCreated,
    required TResult orElse(),
  }) {
    if (subTaskCreated != null) {
      return subTaskCreated();
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
    required TResult Function(_SubTaskCreated value) subTaskCreated,
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
    TResult? Function(_SubTaskCreated value)? subTaskCreated,
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
    TResult Function(_SubTaskCreated value)? subTaskCreated,
    required TResult orElse(),
  }) {
    if (subTaskCreated != null) {
      return subTaskCreated(this);
    }
    return orElse();
  }
}

abstract class _SubTaskCreated implements TasksManagerState {
  const factory _SubTaskCreated() = _$SubTaskCreatedImpl;
}
