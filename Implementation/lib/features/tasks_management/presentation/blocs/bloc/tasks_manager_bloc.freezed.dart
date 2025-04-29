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
    required TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)
        createTaskWithSubTasks,
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateTaskWithSubTasksParams taskAndSubTasks)?
        createTaskWithSubTasks,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)?
        createTaskWithSubTasks,
    TResult Function(DateTime date)? fetchScheduledInstancesByDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskWithSubTasksEvent value)
        createTaskWithSubTasks,
    required TResult Function(_FetchScheduledInstancesByDay value)
        fetchScheduledInstancesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskWithSubTasksEvent value)?
        createTaskWithSubTasks,
    TResult? Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskWithSubTasksEvent value)?
        createTaskWithSubTasks,
    TResult Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
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
    required TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)
        createTaskWithSubTasks,
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateTaskWithSubTasksParams taskAndSubTasks)?
        createTaskWithSubTasks,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)?
        createTaskWithSubTasks,
    TResult Function(DateTime date)? fetchScheduledInstancesByDay,
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
    required TResult Function(_CreateTaskWithSubTasksEvent value)
        createTaskWithSubTasks,
    required TResult Function(_FetchScheduledInstancesByDay value)
        fetchScheduledInstancesByDay,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskWithSubTasksEvent value)?
        createTaskWithSubTasks,
    TResult? Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskWithSubTasksEvent value)?
        createTaskWithSubTasks,
    TResult Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
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
abstract class _$$CreateTaskWithSubTasksEventImplCopyWith<$Res> {
  factory _$$CreateTaskWithSubTasksEventImplCopyWith(
          _$CreateTaskWithSubTasksEventImpl value,
          $Res Function(_$CreateTaskWithSubTasksEventImpl) then) =
      __$$CreateTaskWithSubTasksEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateTaskWithSubTasksParams taskAndSubTasks});
}

/// @nodoc
class __$$CreateTaskWithSubTasksEventImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res,
        _$CreateTaskWithSubTasksEventImpl>
    implements _$$CreateTaskWithSubTasksEventImplCopyWith<$Res> {
  __$$CreateTaskWithSubTasksEventImplCopyWithImpl(
      _$CreateTaskWithSubTasksEventImpl _value,
      $Res Function(_$CreateTaskWithSubTasksEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskAndSubTasks = null,
  }) {
    return _then(_$CreateTaskWithSubTasksEventImpl(
      taskAndSubTasks: null == taskAndSubTasks
          ? _value.taskAndSubTasks
          : taskAndSubTasks // ignore: cast_nullable_to_non_nullable
              as CreateTaskWithSubTasksParams,
    ));
  }
}

/// @nodoc

class _$CreateTaskWithSubTasksEventImpl
    implements _CreateTaskWithSubTasksEvent {
  const _$CreateTaskWithSubTasksEventImpl({required this.taskAndSubTasks});

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
            other is _$CreateTaskWithSubTasksEventImpl &&
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
  _$$CreateTaskWithSubTasksEventImplCopyWith<_$CreateTaskWithSubTasksEventImpl>
      get copyWith => __$$CreateTaskWithSubTasksEventImplCopyWithImpl<
          _$CreateTaskWithSubTasksEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)
        createTaskWithSubTasks,
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
  }) {
    return createTaskWithSubTasks(taskAndSubTasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateTaskWithSubTasksParams taskAndSubTasks)?
        createTaskWithSubTasks,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
  }) {
    return createTaskWithSubTasks?.call(taskAndSubTasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)?
        createTaskWithSubTasks,
    TResult Function(DateTime date)? fetchScheduledInstancesByDay,
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
    required TResult Function(_CreateTaskWithSubTasksEvent value)
        createTaskWithSubTasks,
    required TResult Function(_FetchScheduledInstancesByDay value)
        fetchScheduledInstancesByDay,
  }) {
    return createTaskWithSubTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskWithSubTasksEvent value)?
        createTaskWithSubTasks,
    TResult? Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
  }) {
    return createTaskWithSubTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskWithSubTasksEvent value)?
        createTaskWithSubTasks,
    TResult Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
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
          {required final CreateTaskWithSubTasksParams taskAndSubTasks}) =
      _$CreateTaskWithSubTasksEventImpl;

  CreateTaskWithSubTasksParams get taskAndSubTasks;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskWithSubTasksEventImplCopyWith<_$CreateTaskWithSubTasksEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchScheduledInstancesByDayImplCopyWith<$Res> {
  factory _$$FetchScheduledInstancesByDayImplCopyWith(
          _$FetchScheduledInstancesByDayImpl value,
          $Res Function(_$FetchScheduledInstancesByDayImpl) then) =
      __$$FetchScheduledInstancesByDayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$FetchScheduledInstancesByDayImplCopyWithImpl<$Res>
    extends _$TasksManagerEventCopyWithImpl<$Res,
        _$FetchScheduledInstancesByDayImpl>
    implements _$$FetchScheduledInstancesByDayImplCopyWith<$Res> {
  __$$FetchScheduledInstancesByDayImplCopyWithImpl(
      _$FetchScheduledInstancesByDayImpl _value,
      $Res Function(_$FetchScheduledInstancesByDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$FetchScheduledInstancesByDayImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FetchScheduledInstancesByDayImpl
    implements _FetchScheduledInstancesByDay {
  const _$FetchScheduledInstancesByDayImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'TasksManagerEvent.fetchScheduledInstancesByDay(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchScheduledInstancesByDayImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchScheduledInstancesByDayImplCopyWith<
          _$FetchScheduledInstancesByDayImpl>
      get copyWith => __$$FetchScheduledInstancesByDayImplCopyWithImpl<
          _$FetchScheduledInstancesByDayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)
        createTaskWithSubTasks,
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
  }) {
    return fetchScheduledInstancesByDay(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateTaskWithSubTasksParams taskAndSubTasks)?
        createTaskWithSubTasks,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
  }) {
    return fetchScheduledInstancesByDay?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateTaskWithSubTasksParams taskAndSubTasks)?
        createTaskWithSubTasks,
    TResult Function(DateTime date)? fetchScheduledInstancesByDay,
    required TResult orElse(),
  }) {
    if (fetchScheduledInstancesByDay != null) {
      return fetchScheduledInstancesByDay(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateTaskWithSubTasksEvent value)
        createTaskWithSubTasks,
    required TResult Function(_FetchScheduledInstancesByDay value)
        fetchScheduledInstancesByDay,
  }) {
    return fetchScheduledInstancesByDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateTaskWithSubTasksEvent value)?
        createTaskWithSubTasks,
    TResult? Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
  }) {
    return fetchScheduledInstancesByDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateTaskWithSubTasksEvent value)?
        createTaskWithSubTasks,
    TResult Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
    required TResult orElse(),
  }) {
    if (fetchScheduledInstancesByDay != null) {
      return fetchScheduledInstancesByDay(this);
    }
    return orElse();
  }
}

abstract class _FetchScheduledInstancesByDay implements TasksManagerEvent {
  const factory _FetchScheduledInstancesByDay(final DateTime date) =
      _$FetchScheduledInstancesByDayImpl;

  DateTime get date;

  /// Create a copy of TasksManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchScheduledInstancesByDayImplCopyWith<
          _$FetchScheduledInstancesByDayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(List<TaskUI> tasks) todayTasksFetched,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(List<ScheduledInstanceUI> scheduledInstances)
        scheduledInstancesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TodayTasksFetched value) todayTasksFetched,
    required TResult Function(_TaskAndSubTasksCreated value)
        taskAndSubTasksCreated,
    required TResult Function(_ScheduledInstancesFetched value)
        scheduledInstancesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
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
    required TResult Function(List<TaskUI> tasks) todayTasksFetched,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(List<ScheduledInstanceUI> scheduledInstances)
        scheduledInstancesFetched,
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
    TResult? Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
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
    TResult Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
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
    required TResult Function(_TodayTasksFetched value) todayTasksFetched,
    required TResult Function(_TaskAndSubTasksCreated value)
        taskAndSubTasksCreated,
    required TResult Function(_ScheduledInstancesFetched value)
        scheduledInstancesFetched,
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
    TResult? Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
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
    TResult Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
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
    required TResult Function(List<TaskUI> tasks) todayTasksFetched,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(List<ScheduledInstanceUI> scheduledInstances)
        scheduledInstancesFetched,
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
    TResult? Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
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
    TResult Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
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
    required TResult Function(_TodayTasksFetched value) todayTasksFetched,
    required TResult Function(_TaskAndSubTasksCreated value)
        taskAndSubTasksCreated,
    required TResult Function(_ScheduledInstancesFetched value)
        scheduledInstancesFetched,
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
    TResult? Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
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
    TResult Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
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
    required TResult Function(List<TaskUI> tasks) todayTasksFetched,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(List<ScheduledInstanceUI> scheduledInstances)
        scheduledInstancesFetched,
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
    TResult? Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
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
    TResult Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
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
    required TResult Function(_TodayTasksFetched value) todayTasksFetched,
    required TResult Function(_TaskAndSubTasksCreated value)
        taskAndSubTasksCreated,
    required TResult Function(_ScheduledInstancesFetched value)
        scheduledInstancesFetched,
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
    TResult? Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
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
    TResult Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
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
    required TResult Function(List<TaskUI> tasks) todayTasksFetched,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(List<ScheduledInstanceUI> scheduledInstances)
        scheduledInstancesFetched,
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
    TResult? Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
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
    TResult Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
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
    required TResult Function(_TodayTasksFetched value) todayTasksFetched,
    required TResult Function(_TaskAndSubTasksCreated value)
        taskAndSubTasksCreated,
    required TResult Function(_ScheduledInstancesFetched value)
        scheduledInstancesFetched,
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
    TResult? Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
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
    TResult Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
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
abstract class _$$TodayTasksFetchedImplCopyWith<$Res> {
  factory _$$TodayTasksFetchedImplCopyWith(_$TodayTasksFetchedImpl value,
          $Res Function(_$TodayTasksFetchedImpl) then) =
      __$$TodayTasksFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskUI> tasks});
}

/// @nodoc
class __$$TodayTasksFetchedImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$TodayTasksFetchedImpl>
    implements _$$TodayTasksFetchedImplCopyWith<$Res> {
  __$$TodayTasksFetchedImplCopyWithImpl(_$TodayTasksFetchedImpl _value,
      $Res Function(_$TodayTasksFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TodayTasksFetchedImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskUI>,
    ));
  }
}

/// @nodoc

class _$TodayTasksFetchedImpl implements _TodayTasksFetched {
  const _$TodayTasksFetchedImpl(final List<TaskUI> tasks) : _tasks = tasks;

  final List<TaskUI> _tasks;
  @override
  List<TaskUI> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksManagerState.todayTasksFetched(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayTasksFetchedImpl &&
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
  _$$TodayTasksFetchedImplCopyWith<_$TodayTasksFetchedImpl> get copyWith =>
      __$$TodayTasksFetchedImplCopyWithImpl<_$TodayTasksFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(List<TaskUI> tasks) todayTasksFetched,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(List<ScheduledInstanceUI> scheduledInstances)
        scheduledInstancesFetched,
  }) {
    return todayTasksFetched(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
  }) {
    return todayTasksFetched?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
    required TResult orElse(),
  }) {
    if (todayTasksFetched != null) {
      return todayTasksFetched(tasks);
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
    required TResult Function(_TodayTasksFetched value) todayTasksFetched,
    required TResult Function(_TaskAndSubTasksCreated value)
        taskAndSubTasksCreated,
    required TResult Function(_ScheduledInstancesFetched value)
        scheduledInstancesFetched,
  }) {
    return todayTasksFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
  }) {
    return todayTasksFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
    required TResult orElse(),
  }) {
    if (todayTasksFetched != null) {
      return todayTasksFetched(this);
    }
    return orElse();
  }
}

abstract class _TodayTasksFetched implements TasksManagerState {
  const factory _TodayTasksFetched(final List<TaskUI> tasks) =
      _$TodayTasksFetchedImpl;

  List<TaskUI> get tasks;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodayTasksFetchedImplCopyWith<_$TodayTasksFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskAndSubTasksCreatedImplCopyWith<$Res> {
  factory _$$TaskAndSubTasksCreatedImplCopyWith(
          _$TaskAndSubTasksCreatedImpl value,
          $Res Function(_$TaskAndSubTasksCreatedImpl) then) =
      __$$TaskAndSubTasksCreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskAndSubTasksCreatedImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res, _$TaskAndSubTasksCreatedImpl>
    implements _$$TaskAndSubTasksCreatedImplCopyWith<$Res> {
  __$$TaskAndSubTasksCreatedImplCopyWithImpl(
      _$TaskAndSubTasksCreatedImpl _value,
      $Res Function(_$TaskAndSubTasksCreatedImpl) _then)
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
        (other.runtimeType == runtimeType &&
            other is _$TaskAndSubTasksCreatedImpl);
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
    required TResult Function(List<TaskUI> tasks) todayTasksFetched,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(List<ScheduledInstanceUI> scheduledInstances)
        scheduledInstancesFetched,
  }) {
    return taskAndSubTasksCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
  }) {
    return taskAndSubTasksCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
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
    required TResult Function(_SuccessfulAction value) successfulAction,
    required TResult Function(_FailedAction value) failedAction,
    required TResult Function(_TodayTasksFetched value) todayTasksFetched,
    required TResult Function(_TaskAndSubTasksCreated value)
        taskAndSubTasksCreated,
    required TResult Function(_ScheduledInstancesFetched value)
        scheduledInstancesFetched,
  }) {
    return taskAndSubTasksCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
  }) {
    return taskAndSubTasksCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
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
abstract class _$$ScheduledInstancesFetchedImplCopyWith<$Res> {
  factory _$$ScheduledInstancesFetchedImplCopyWith(
          _$ScheduledInstancesFetchedImpl value,
          $Res Function(_$ScheduledInstancesFetchedImpl) then) =
      __$$ScheduledInstancesFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScheduledInstanceUI> scheduledInstances});
}

/// @nodoc
class __$$ScheduledInstancesFetchedImplCopyWithImpl<$Res>
    extends _$TasksManagerStateCopyWithImpl<$Res,
        _$ScheduledInstancesFetchedImpl>
    implements _$$ScheduledInstancesFetchedImplCopyWith<$Res> {
  __$$ScheduledInstancesFetchedImplCopyWithImpl(
      _$ScheduledInstancesFetchedImpl _value,
      $Res Function(_$ScheduledInstancesFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduledInstances = null,
  }) {
    return _then(_$ScheduledInstancesFetchedImpl(
      null == scheduledInstances
          ? _value._scheduledInstances
          : scheduledInstances // ignore: cast_nullable_to_non_nullable
              as List<ScheduledInstanceUI>,
    ));
  }
}

/// @nodoc

class _$ScheduledInstancesFetchedImpl implements _ScheduledInstancesFetched {
  const _$ScheduledInstancesFetchedImpl(
      final List<ScheduledInstanceUI> scheduledInstances)
      : _scheduledInstances = scheduledInstances;

  final List<ScheduledInstanceUI> _scheduledInstances;
  @override
  List<ScheduledInstanceUI> get scheduledInstances {
    if (_scheduledInstances is EqualUnmodifiableListView)
      return _scheduledInstances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduledInstances);
  }

  @override
  String toString() {
    return 'TasksManagerState.scheduledInstancesFetched(scheduledInstances: $scheduledInstances)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledInstancesFetchedImpl &&
            const DeepCollectionEquality()
                .equals(other._scheduledInstances, _scheduledInstances));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_scheduledInstances));

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledInstancesFetchedImplCopyWith<_$ScheduledInstancesFetchedImpl>
      get copyWith => __$$ScheduledInstancesFetchedImplCopyWithImpl<
          _$ScheduledInstancesFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
    required TResult Function(List<TaskUI> tasks) todayTasksFetched,
    required TResult Function() taskAndSubTasksCreated,
    required TResult Function(List<ScheduledInstanceUI> scheduledInstances)
        scheduledInstancesFetched,
  }) {
    return scheduledInstancesFetched(scheduledInstances);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String successMessage)? successfulAction,
    TResult? Function(String errorMessage)? failedAction,
    TResult? Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult? Function()? taskAndSubTasksCreated,
    TResult? Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
  }) {
    return scheduledInstancesFetched?.call(scheduledInstances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String successMessage)? successfulAction,
    TResult Function(String errorMessage)? failedAction,
    TResult Function(List<TaskUI> tasks)? todayTasksFetched,
    TResult Function()? taskAndSubTasksCreated,
    TResult Function(List<ScheduledInstanceUI> scheduledInstances)?
        scheduledInstancesFetched,
    required TResult orElse(),
  }) {
    if (scheduledInstancesFetched != null) {
      return scheduledInstancesFetched(scheduledInstances);
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
    required TResult Function(_TodayTasksFetched value) todayTasksFetched,
    required TResult Function(_TaskAndSubTasksCreated value)
        taskAndSubTasksCreated,
    required TResult Function(_ScheduledInstancesFetched value)
        scheduledInstancesFetched,
  }) {
    return scheduledInstancesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessfulAction value)? successfulAction,
    TResult? Function(_FailedAction value)? failedAction,
    TResult? Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult? Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult? Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
  }) {
    return scheduledInstancesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessfulAction value)? successfulAction,
    TResult Function(_FailedAction value)? failedAction,
    TResult Function(_TodayTasksFetched value)? todayTasksFetched,
    TResult Function(_TaskAndSubTasksCreated value)? taskAndSubTasksCreated,
    TResult Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
    required TResult orElse(),
  }) {
    if (scheduledInstancesFetched != null) {
      return scheduledInstancesFetched(this);
    }
    return orElse();
  }
}

abstract class _ScheduledInstancesFetched implements TasksManagerState {
  const factory _ScheduledInstancesFetched(
          final List<ScheduledInstanceUI> scheduledInstances) =
      _$ScheduledInstancesFetchedImpl;

  List<ScheduledInstanceUI> get scheduledInstances;

  /// Create a copy of TasksManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduledInstancesFetchedImplCopyWith<_$ScheduledInstancesFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
