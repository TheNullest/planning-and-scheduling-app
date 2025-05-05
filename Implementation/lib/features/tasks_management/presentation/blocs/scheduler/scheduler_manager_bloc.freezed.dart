// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduler_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchedulerManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime date)? fetchScheduledInstancesByDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchScheduledInstancesByDay value)
        fetchScheduledInstancesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulerManagerEventCopyWith<$Res> {
  factory $SchedulerManagerEventCopyWith(SchedulerManagerEvent value,
          $Res Function(SchedulerManagerEvent) then) =
      _$SchedulerManagerEventCopyWithImpl<$Res, SchedulerManagerEvent>;
}

/// @nodoc
class _$SchedulerManagerEventCopyWithImpl<$Res,
        $Val extends SchedulerManagerEvent>
    implements $SchedulerManagerEventCopyWith<$Res> {
  _$SchedulerManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchedulerManagerEvent
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
    extends _$SchedulerManagerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SchedulerManagerEvent.started()';
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
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
    required TResult Function(_FetchScheduledInstancesByDay value)
        fetchScheduledInstancesByDay,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
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

abstract class _Started implements SchedulerManagerEvent {
  const factory _Started() = _$StartedImpl;
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
    extends _$SchedulerManagerEventCopyWithImpl<$Res,
        _$FetchScheduledInstancesByDayImpl>
    implements _$$FetchScheduledInstancesByDayImplCopyWith<$Res> {
  __$$FetchScheduledInstancesByDayImplCopyWithImpl(
      _$FetchScheduledInstancesByDayImpl _value,
      $Res Function(_$FetchScheduledInstancesByDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerEvent
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
    return 'SchedulerManagerEvent.fetchScheduledInstancesByDay(date: $date)';
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

  /// Create a copy of SchedulerManagerEvent
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
    required TResult Function(DateTime date) fetchScheduledInstancesByDay,
  }) {
    return fetchScheduledInstancesByDay(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DateTime date)? fetchScheduledInstancesByDay,
  }) {
    return fetchScheduledInstancesByDay?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
    required TResult Function(_FetchScheduledInstancesByDay value)
        fetchScheduledInstancesByDay,
  }) {
    return fetchScheduledInstancesByDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchScheduledInstancesByDay value)?
        fetchScheduledInstancesByDay,
  }) {
    return fetchScheduledInstancesByDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
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

abstract class _FetchScheduledInstancesByDay implements SchedulerManagerEvent {
  const factory _FetchScheduledInstancesByDay(final DateTime date) =
      _$FetchScheduledInstancesByDayImpl;

  DateTime get date;

  /// Create a copy of SchedulerManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchScheduledInstancesByDayImplCopyWith<
          _$FetchScheduledInstancesByDayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchedulerManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String successMessage) successfulAction,
    required TResult Function(String errorMessage) failedAction,
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
    TResult Function(_ScheduledInstancesFetched value)?
        scheduledInstancesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulerManagerStateCopyWith<$Res> {
  factory $SchedulerManagerStateCopyWith(SchedulerManagerState value,
          $Res Function(SchedulerManagerState) then) =
      _$SchedulerManagerStateCopyWithImpl<$Res, SchedulerManagerState>;
}

/// @nodoc
class _$SchedulerManagerStateCopyWithImpl<$Res,
        $Val extends SchedulerManagerState>
    implements $SchedulerManagerStateCopyWith<$Res> {
  _$SchedulerManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchedulerManagerState
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
    extends _$SchedulerManagerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SchedulerManagerState.initial()';
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

abstract class _Initial implements SchedulerManagerState {
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
    extends _$SchedulerManagerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SchedulerManagerState.loading()';
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

abstract class _Loading implements SchedulerManagerState {
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
    extends _$SchedulerManagerStateCopyWithImpl<$Res, _$SuccessfulActionImpl>
    implements _$$SuccessfulActionImplCopyWith<$Res> {
  __$$SuccessfulActionImplCopyWithImpl(_$SuccessfulActionImpl _value,
      $Res Function(_$SuccessfulActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
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
    return 'SchedulerManagerState.successfulAction(successMessage: $successMessage)';
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

  /// Create a copy of SchedulerManagerState
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

abstract class _SuccessfulAction implements SchedulerManagerState {
  const factory _SuccessfulAction(final String successMessage) =
      _$SuccessfulActionImpl;

  String get successMessage;

  /// Create a copy of SchedulerManagerState
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
    extends _$SchedulerManagerStateCopyWithImpl<$Res, _$FailedActionImpl>
    implements _$$FailedActionImplCopyWith<$Res> {
  __$$FailedActionImplCopyWithImpl(
      _$FailedActionImpl _value, $Res Function(_$FailedActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
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
    return 'SchedulerManagerState.failedAction(errorMessage: $errorMessage)';
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

  /// Create a copy of SchedulerManagerState
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

abstract class _FailedAction implements SchedulerManagerState {
  const factory _FailedAction(final String errorMessage) = _$FailedActionImpl;

  String get errorMessage;

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedActionImplCopyWith<_$FailedActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$SchedulerManagerStateCopyWithImpl<$Res,
        _$ScheduledInstancesFetchedImpl>
    implements _$$ScheduledInstancesFetchedImplCopyWith<$Res> {
  __$$ScheduledInstancesFetchedImplCopyWithImpl(
      _$ScheduledInstancesFetchedImpl _value,
      $Res Function(_$ScheduledInstancesFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulerManagerState
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
    return 'SchedulerManagerState.scheduledInstancesFetched(scheduledInstances: $scheduledInstances)';
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

  /// Create a copy of SchedulerManagerState
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

abstract class _ScheduledInstancesFetched implements SchedulerManagerState {
  const factory _ScheduledInstancesFetched(
          final List<ScheduledInstanceUI> scheduledInstances) =
      _$ScheduledInstancesFetchedImpl;

  List<ScheduledInstanceUI> get scheduledInstances;

  /// Create a copy of SchedulerManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduledInstancesFetchedImplCopyWith<_$ScheduledInstancesFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
