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
    required TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks) createTaskWithSubTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateTaskWithSubTasksParams taskAndSubTasks)? createTaskWithSubTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)? createTaskWithSubTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskWithSubTasksEvent value) createTaskWithSubTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskWithSubTasksEvent value)? createTaskWithSubTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskWithSubTasksEvent value)? createTaskWithSubTasks,
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
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$TasksManagerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks) createTaskWithSubTasks,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateTaskWithSubTasksParams taskAndSubTasks)? createTaskWithSubTasks,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)? createTaskWithSubTasks,
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
    required TResult Function(_CreateTaskWithSubTasksEvent value) createTaskWithSubTasks,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskWithSubTasksEvent value)? createTaskWithSubTasks,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskWithSubTasksEvent value)? createTaskWithSubTasks,
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
abstract class _$$CreateTaskWithSubTasksImplCopyWith<$Res> {
  factory _$$CreateTaskWithSubTasksImplCopyWith(
          _$CreateTaskWithSubTasksImpl value, $Res Function(_$CreateTaskWithSubTasksImpl) then) =
      __$$CreateTaskWithSubTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateTaskWithSubTasksParams taskAndSubTasks});
}

/// @nodoc
class __$$CreateTaskWithSubTasksImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res, _$CreateTaskWithSubTasksImpl>
    implements _$$CreateTaskWithSubTasksImplCopyWith<$Res> {
  __$$CreateTaskWithSubTasksImplCopyWithImpl(
      _$CreateTaskWithSubTasksImpl _value, $Res Function(_$CreateTaskWithSubTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskAndSubTasks = null,
  }) {
    return _then(_$CreateTaskWithSubTasksImpl(
      taskAndSubTasks: null == taskAndSubTasks
          ? _value.taskAndSubTasks
          : taskAndSubTasks // ignore: cast_nullable_to_non_nullable
              as CreateTaskWithSubTasksParams,
    ));
  }
}

/// @nodoc

class _$CreateTaskWithSubTasksImpl implements _CreateTaskWithSubTasksEvent {
  const _$CreateTaskWithSubTasksImpl({required this.taskAndSubTasks});

  @override
  final CreateTaskWithSubTasksParams taskAndSubTasks;

  @override
  String toString() {
    return 'TasksManagerEvent.createTaskWithSubTasks(taskAndSubTasks: $taskAndSubTasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskWithSubTasksImpl &&
            (identical(other.taskAndSubTasks, taskAndSubTasks) ||
                other.taskAndSubTasks == taskAndSubTasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskAndSubTasks);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskWithSubTasksImplCopyWith<_$CreateTaskWithSubTasksImpl> get copyWith =>
      __$$CreateTaskWithSubTasksImplCopyWithImpl<_$CreateTaskWithSubTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks) createTaskWithSubTasks,
  }) {
    return createTaskWithSubTasks(taskAndSubTasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateTaskWithSubTasksParams taskAndSubTasks)? createTaskWithSubTasks,
  }) {
    return createTaskWithSubTasks?.call(taskAndSubTasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)? createTaskWithSubTasks,
    required TResult orElse(),
  }) {
    if (createTaskWithSubTasks != null) {
      return createTaskWithSubTasks(taskAndSubTasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskWithSubTasksEvent value) createTaskWithSubTasks,
  }) {
    return createTaskWithSubTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskWithSubTasksEvent value)? createTaskWithSubTasks,
  }) {
    return createTaskWithSubTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskWithSubTasksEvent value)? createTaskWithSubTasks,
    required TResult orElse(),
  }) {
    if (createTaskWithSubTasks != null) {
      return createTaskWithSubTasks(this);
    }
    return orElse();
  }
}

abstract class _CreateTaskWithSubTasksEvent implements TasksManagerEvent {
  const factory _CreateTaskWithSubTasksEvent(
      {required final CreateTaskWithSubTasksParams taskAndSubTasks}) = _$CreateTaskWithSubTasksImpl;

  CreateTaskWithSubTasksParams get taskAndSubTasks;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskWithSubTasksImplCopyWith<_$CreateTaskWithSubTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(String errorMessage) creatingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(String errorMessage)? creatingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(String errorMessage)? creatingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TaskAndSubTasksCreated value) taskAndSubTasksCreated,
    required TResult Function(_CreatingFailed value) creatingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_CreatingFailed value)? creatingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_CreatingFailed value)? creatingFailed,
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
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$TasksManagerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(String errorMessage) creatingFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(String errorMessage)? creatingFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(String errorMessage)? creatingFailed,
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
    required TResult Function(_TaskAndSubTasksCreated value) taskAndSubTasksCreated,
    required TResult Function(_CreatingFailed value) creatingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_CreatingFailed value)? creatingFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_CreatingFailed value)? creatingFailed,
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
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$TasksManagerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(String errorMessage) creatingFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(String errorMessage)? creatingFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(String errorMessage)? creatingFailed,
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
    required TResult Function(_TaskAndSubTasksCreated value) taskAndSubTasksCreated,
    required TResult Function(_CreatingFailed value) creatingFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_CreatingFailed value)? creatingFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_CreatingFailed value)? creatingFailed,
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
abstract class _$$TaskAndSubTasksCreatedImplCopyWith<$Res> {
  factory _$$TaskAndSubTasksCreatedImplCopyWith(
          _$TaskAndSubTasksCreatedImpl value, $Res Function(_$TaskAndSubTasksCreatedImpl) then) =
      __$$TaskAndSubTasksCreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskAndSubTasksCreatedImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$TaskAndSubTasksCreatedImpl>
    implements _$$TaskAndSubTasksCreatedImplCopyWith<$Res> {
  __$$TaskAndSubTasksCreatedImplCopyWithImpl(
      _$TaskAndSubTasksCreatedImpl _value, $Res Function(_$TaskAndSubTasksCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskAndSubTasksCreatedImpl implements _TaskAndSubTasksCreated {
  const _$TaskAndSubTasksCreatedImpl();

  @override
  String toString() {
    return 'TasksManagerState.taskAndSubTasksCreated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskAndSubTasksCreatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(String errorMessage) creatingFailed,
  }) {
    return taskAndSubTasksCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(String errorMessage)? creatingFailed,
  }) {
    return taskAndSubTasksCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(String errorMessage)? creatingFailed,
    required TResult orElse(),
  }) {
    if (taskAndSubTasksCreated != null) {
      return taskAndSubTasksCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TaskAndSubTasksCreated value) taskAndSubTasksCreated,
    required TResult Function(_CreatingFailed value) creatingFailed,
  }) {
    return taskAndSubTasksCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_CreatingFailed value)? creatingFailed,
  }) {
    return taskAndSubTasksCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_CreatingFailed value)? creatingFailed,
    required TResult orElse(),
  }) {
    if (taskAndSubTasksCreated != null) {
      return taskAndSubTasksCreated(this);
    }
    return orElse();
  }
}

abstract class _TaskAndSubTasksCreated implements TasksManagerState {
  const factory _TaskAndSubTasksCreated() = _$TaskAndSubTasksCreatedImpl;
}

/// @nodoc
abstract class _$$CreatingFailedImplCopyWith<$Res> {
  factory _$$CreatingFailedImplCopyWith(
          _$CreatingFailedImpl value, $Res Function(_$CreatingFailedImpl) then) =
      __$$CreatingFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CreatingFailedImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$CreatingFailedImpl>
    implements _$$CreatingFailedImplCopyWith<$Res> {
  __$$CreatingFailedImplCopyWithImpl(
      _$CreatingFailedImpl _value, $Res Function(_$CreatingFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CreatingFailedImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatingFailedImpl implements _CreatingFailed {
  const _$CreatingFailedImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TasksManagerState.creatingFailed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatingFailedImpl &&
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatingFailedImplCopyWith<_$CreatingFailedImpl> get copyWith =>
      __$$CreatingFailedImplCopyWithImpl<_$CreatingFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(String errorMessage) creatingFailed,
  }) {
    return creatingFailed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(String errorMessage)? creatingFailed,
  }) {
    return creatingFailed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(String errorMessage)? creatingFailed,
    required TResult orElse(),
  }) {
    if (creatingFailed != null) {
      return creatingFailed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TaskAndSubTasksCreated value) taskAndSubTasksCreated,
    required TResult Function(_CreatingFailed value) creatingFailed,
  }) {
    return creatingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_CreatingFailed value)? creatingFailed,
  }) {
    return creatingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_CreatingFailed value)? creatingFailed,
    required TResult orElse(),
  }) {
    if (creatingFailed != null) {
      return creatingFailed(this);
    }
    return orElse();
  }
}

abstract class _CreatingFailed implements TasksManagerState {
  const factory _CreatingFailed(final String errorMessage) = _$CreatingFailedImpl;

  String get errorMessage;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatingFailedImplCopyWith<_$CreatingFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
